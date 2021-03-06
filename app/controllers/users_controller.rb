class UsersController < ApplicationController
  before_action :logged_in_user, only: [:index, :show, :edit, :update, :destroy]
  before_action :correct_user,   only: [:edit, :update, :destroy]

	def index
		@users = User.paginate(page: params[:page], per_page: 30)
	end

	def show
		@user = User.find(params[:id])
    @departments = @user.departments
    @products = @user.products
    @relationships = @user.relationships
  end

	def new
		@user = User.new
	end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_back_or user
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end
	
  def edit
    @user = User.find(params[:id])
  end

	def update
      if @user.update_attributes(user_params)
	    flash[:success] = "Profile updated"
    	redirect_to @user
      else
        render 'edit'
      end
  	end
  
  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to users_url
  end


  private

    def user_params
      params.require(:user).permit(:user_name, :email, :password,
                                   :password_confirmation)
    end

    # Before filters

    # Confirms the correct user.
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end
end
