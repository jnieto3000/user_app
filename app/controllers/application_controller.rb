class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def show
    @user = User.find_by_id(params['id'])
    render 'show'
  end
  
  def new
  end
  
  def create
    u = User.new
    u.image_url = params['image_url']
    u.name = params['user_name']
    u.bio = params['bio']
    u.save
    redirect_to "/users/#{ u.id } "  
  end
  
  def edit
    @user = User.find_by_id(params['id'])
  end
  
  def update
    u = User.find_by_id(params['id'])
    u.image_url = params['image_url']
    u.name = params['user_name']
    u.bio = params['bio']
    u.save
    redirect_to "/users/#{ u.id } "  
  end
  
  def destroy
    u = User.find_by_id(params['id'])
#     raise u.inspect
    u.destroy
    redirect_to "/new_user/", notice: 'message'
#     redirect_to "/users/#{ u.id } "  
  end
  
  
  
end
  
#   def show
#     if params['id'] == '1'
#     @image_url = "http://upload.wikimedia.org/wikipedia/commons/b/be/Carl_Sagan_Planetary_Society.JPG"Ω
#     @name = "Carl Sagan"
#     @bio = "Astronomer Carl Edward Sagan was an American astronomer, astrophysicist, cosmologist, author, science popularizer and science communicator in astronomy and other natural sciences."
#     render 'show'

#     elsif params['id'] =='2'
#     @image_url = "http://t3.gstatic.com/images?q=tbn:ANd9GcSC2AhghQr9wqWOJZdtipXf-47slL8Ti55ZqNBG3sQ_uYiLo35d"
#         @name = "Ann Druyan"
#          @bio = "Ann Druyan is an American author and producer specializing in productions about cosmology and popular science. She was a co-writer of the 1980 PBS documentary series Cosmos, hosted by the late Carl Sagan, who she married in 1981."
#      render 'show'  
#     end
      
  
#   def first
#     @image_url = "http://upload.wikimedia.org/wikipedia/commons/b/be/Carl_Sagan_Planetary_Society.JPG"
#     @name = "Carl Sagan"
#     @bio = "Astronomer Carl Edward Sagan was an American astronomer, astrophysicist, cosmologist, author, science popularizer and science communicator in astronomy and other natural sciences."
#     render 'show'
#   end
  
#   def second
#     @image_url = "http://t3.gstatic.com/images?q=tbn:ANd9GcSC2AhghQr9wqWOJZdtipXf-47slL8Ti55ZqNBG3sQ_uYiLo35d"
#     @name = "Ann Druyan"
#     @bio = "Ann Druyan is an American author and producer specializing in productions about cosmology and popular science. She was a co-writer of the 1980 PBS documentary series Cosmos, hosted by the late Carl Sagan, who she married in 1981."
#     render 'show'
#   end

