class LocationsController < ApplicationController
    def index
        @locations = Location.all
    end
    
    def show
        @location = Location.find(params[:id])
        @review = Review.new
    end
    
    def new
        @location = Location.new
        @image = Image.new
    end

    def create
        @location = Location.new(user_params)
        @location.user_id = session[:user_id]
        if @location.save
            @location.images.create(params.require(:location).permit(:image))
            redirect_to locations_path
        else
            render :new
        end
    end
    
    def edit
        @location = Location.find(params[:id])
        @image = Image.new
    end
    
    def update
        @location = Location.find(params[:id])
        @location.images.create(params.require(:location).permit(:image))
        if @location.user.id == session[:user_id]
            if @location.update_attributes(user_params)
                redirect_to location_path(params[:id])
            else
                render :edit
            end
        end


    end
    
    def destroy
        @location = Location.find(params[:id])
        if @location.user.id == session[:user_id]
            @location.destroy
            redirect_to locations_path
        end
    end

private

    def user_params
      params.require(:location).permit(:name, :address, :phone, :description)
    end
end
