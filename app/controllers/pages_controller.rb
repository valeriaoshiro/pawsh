class PagesController < ApplicationController
    def show
        page = params[:page]
        @locations = Location.all
        @reviews = Review.all
        @images = Image.all
        render "pages/#{page}"
    end
end
