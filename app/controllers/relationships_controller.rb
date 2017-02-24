class RelationshipsController < ApplicationController
  before_action :logged_in_user, only: [:index, :new, :create, :edit, :update, :destroy]

  def index
  	@relationships = Relationship.paginate(page: params[:page], per_page: 30)
  end
  
  def new
  	@relationship = Relationship.new
  end

  def create
      @relationship = current_user.relationships.build(relationship_params)
    if @relationship.save
      flash[:success] = "Relationship Created!"
      redirect_to action: "index"
    else
      render 'new'
    end
  end

  def edit
  	@relationship = Relationship.find(params[:id])
  end

  def update
  	  @relationship = Relationship.find(params[:id])
    if @relationship.update_attributes(relationship_params)
      flash[:success] = "Relationship updated"
      redirect_to action: "index"
    else
      render 'edit'
    end
  end

  def destroy
    @relationship = Relationship.find(params[:id]).destroy
    flash[:success] = "Relationship Deleted"
    redirect_to action: "index"
  end

  private
    def relationship_params
      params.require(:relationship).permit(:department_id, :follower_id)
    end
end