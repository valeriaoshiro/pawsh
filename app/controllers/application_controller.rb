class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

private

  # Make the current_user method available to views, not just controllers!
  helper_method :current_user, :average_location_review, :get_random_image, :get_profile_image

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end
  
  def authorize
    redirect_to login_path, alert: 'Not authorized - you must be logged in!' if current_user.nil?
  end

  def average_location_review location 
    location_id = location.id
    reviews = Review.where(location_id: location_id)
    sum = 0
    reviews.each do |review|
      sum += review.rating
    end
    if reviews.count == 0
      0
    else        
      sum / reviews.count
    end
  end

    def get_random_image location
        all_nil = true
        location.images.each do |img|
            if img.image_file_name != nil
                all_nil = false
            end
        end
        if all_nil
            "default-pic.jpg"
        else
            location.images.each do |img|
                if img.image_file_name != nil
                    return img.image.url(:thumb)
                end
            end
        end
    end

    def get_profile_image user
        all_nil = true
        user.images.each do |img|
            if img.image_file_name != nil
                all_nil = false
            end
        end
        if all_nil
            "dog-picture.png"
        else
            user.images.each do |img|
                if img.image_file_name != nil
                    return img.image.url(:thumb)
                end
            end
        end
    end
    
  

  
end
