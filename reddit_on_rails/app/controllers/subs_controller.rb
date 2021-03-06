class SubsController < ApplicationController
  before_action :require_login

  def new
    @sub = Subs.find(params[:id])
    render :new
  end

  def create
  end

  def edit
    @sub = Subs.find(params[:id])
    render :edit
  end

  def show
    @sub = Sub.find(params[:id])
    render :show 
  end

  def update
     @sub = Subs.find(params[:id])
     @sub.moderator_id = current_user.id
     if @sub.update(sub_params)
       redirect_to sub_url(@sub)
     else
       flash.now[:errors] = @sub.errors.full_messages
       render :edit
     end
  end

  def index
    @subs = Sub.all
    render :index
  end

  private
  def sub_params
    params.require(:sub).permit(:title,:description)
  end

  # def destory
  # end
end
