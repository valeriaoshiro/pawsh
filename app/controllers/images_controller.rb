class ImagesController < ApplicationController
    def show
        @image = Image.find(params[:id])
        if @image.imagetable_type == "Location"
            @image_parent = Location.find(@image.imagetable_id)
            @image_parent_path = location_path(@image_parent[:id])
        end 
    end

    def new
        @image = Image.new
    end
    
    def create
        @image = Image.new(user_params)
        if @image.save
             redirect_to root_path
        else
            render :new
         end
    end

    def edit
        @image = Image.find(params[:id])      
        if @image.imagetable_type == "Location"
            @image_parent = Location.find(@image.imagetable_id)
            @image_parent_path = location_path(@image_parent[:id])
        elsif @image.imagetable_type == "Review"
            @image_parent = Review.find(@image.imagetable_id)
            @image_parent_path = review_path(@image_parent[:id])
        elsif @image.imagetable_type == "User"
            @image_parent = User.find(@image.imagetable_id)
            @image_parent_path = user_path(@image_parent[:id])
        end      
    end
    
    def update
        @image = Image.find(params[:id])
        if @image.imagetable_type == "Location"
            @image_parent = Location.find(@image.imagetable_id)
        elsif @image.imagetable_type == "Review"
            @image_parent = Review.find(@image.imagetable_id)
        elsif @image.imagetable_type == "User"
            @image_parent = User.find(@image.imagetable_id)
        end  

        if @image_parent.user.id == session[:user_id]
            if @image.update_attributes(user_params)
                redirect_to image_path(params[:id])
            else
                render :edit
            end
        end


    end
    
    def destroy
        @image = Image.find(params[:id])
        if @image.imagetable_type == "Location"
            @image_parent = Location.find(@image.imagetable_id)
            @image_parent_path = location_path(@image_parent[:id])
        elsif @image.imagetable_type == "Review"
            @image_parent = Review.find(@image.imagetable_id)
            @image_parent_path = review_path(@image_parent[:id])
        elsif @image.imagetable_type == "User"
            @image_parent = User.find(@image.imagetable_id)
            @image_parent_path = user_path(@image_parent[:id])
        end  

        if @image_parent.user.id == session[:user_id]
            @image.destroy
            redirect_to @image_parent_path
        end
    end

private

    def user_params
      params.require(:image).permit(:image)
    end    
end

