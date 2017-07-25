class ReviewsController < ApplicationController
    def index
        @reviews = Review.all
    end
    
    def show
        @review = Review.find(params[:id])
    end
    
    def new
        @review = Review.new
    end
    
    def create
        @review = Review.new(user_params)
        @review.location_id = params[:location_id]
        @review.user_id = session[:user_id]
        if @review.save
            redirect_to location_path(params[:location_id])
        else
            redirect_to locations_path
        end
    end
    
    def edit
        @review = Review.find(params[:id])
    end

    def update
        @review = Review.find(params[:id])
        if @review.user_id == session[:user_id]
            if @review.update_attributes(user_params)
                redirect_to location_path(@review.location)
            else
                render :edit
            end
        end            
    end
    
    def destroy
        @review = Review.find(params[:id])
        parent = @review.location
        if @review.user_id == session[:user_id]
            @review.destroy
            redirect_to location_path(parent)
        end
    end

private

    def user_params
      params.require(:review).permit(:rating, :comment)
    end
    
end
