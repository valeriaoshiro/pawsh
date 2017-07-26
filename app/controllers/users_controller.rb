class UsersController < ApplicationController
    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
        @image = Image.new
    end
    
    
    def new
        @user = User.new
    end
    
    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            flash[:notice] = "You have successfully signed up!"
             redirect_to root_path
        else
            render :new
         end
    end

    def edit
        @user = User.find(params[:id])
        @image = Image.new
    end
    
    def update
        @user = User.find(params[:id])
        @user.images.create(params.require(:user).permit(:image))
        if @user.id == session[:user_id]
            if @user.update_attributes(user_params)
                redirect_to user_path(@user)
            else
                render :edit
            end
        end
    end
    
    
private

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
    
end
