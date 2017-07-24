class ImagesController < ApplicationController
    def show
        @image = Image.find(params[:id])
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

private

    def user_params
      params.require(:image).permit(:image)
    end    
end

