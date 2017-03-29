class UsersController < ApplicationController

  def index
    @users = User.all
  end


  def new
  end

  def create
    response = Unirest.post("http://uploads.im/api?upload", parameters: {file: params[:image]}).body


    user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
    )

    if response.key?("data")
      user.image = response["data"]["img_url"]
    else
      user.image = "https://www.salamcinama.ir/public/images/usrUploader/user/userpic.png"
    end

    if user.save
      session[:user_id] = user.id
      flash[:success] = 'Successfully created account!'
      redirect_to '/posts'
    else
      flash[:warning] = 'Invalid email or password!'
      redirect_to '/signup'
    end

  end

  def show
    user_id = params[:id]
    @user = User.find_by(id: user_id)
  
  end

end

