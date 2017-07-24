class PagesController < ApplicationController
    def show
        page = params[:page]
        render "pages/#{page}"
    end
end
