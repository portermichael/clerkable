class CriticsController < ApplicationController
before_action :logged_in_user, only: [:index, :new, :create, :edit, :update, :destroy]

  def index
  	@critics = Critic.paginate(page: params[:page], per_page: 30)
  end
  
  def new
  	@critic = Critic.new
  end

  def create
      @critic = current_user.critics.build(critic_params)
    if @critic.save
      flash[:success] = "Critic Created!"
      redirect_to action: "index"
    else
      render 'new'
    end
  end

  def edit
  	@critic = Critic.find(params[:id])
  end

  def update
  	  @critic = Critic.find(params[:id])
    if @critic.update_attributes(critic_params)
      flash[:success] = "Critic updated"
      redirect_to action: "index"
    else
      render 'edit'
    end
  end

  def destroy
    @critic = Critic.find(params[:id]).destroy
    flash[:success] = "Critic Deleted"
    redirect_to action: "index"
  end

  private
    def critic_params
      params.require(:critic).permit(:department_id, :youtube_id)
    end
end

