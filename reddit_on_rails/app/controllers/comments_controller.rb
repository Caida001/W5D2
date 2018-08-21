class CommentsController < ApplicationController
  before_action :require_login

  def new
    render :new
  end


  def create
    @comment = Comment.new(params.require(:comment).permit(:content))
    @comment.author_id = current_user.id
    @comment.post_id = params[:post_id]

    if @comment.save
      redirect_to post_url(@comment)
    else
      flash[:errors] = @comment.errors.full_messages
      redirect_to post_url(@comment)
    end
  end

  def show
    debugger
  end 

end
