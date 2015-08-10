class CommentsController < ApplicationController
  before_filter :authorize, except: [:index, :show]

  # show all comments in db
  def index
    @comments = Comment.all
    render :index
  end
  # form to create new comment 
  # belongs to user
  def new
    @comment= Comment.new
    render :new
  end
  # creates new comment in db 
  def create
    # comment = Comment.create(comment_params)
    # current_user.comments << comment 
    comment = current_user.comments.create(comment_params)
    redirect_to comment_path(comment)
  end

  def show
    @comment = Comment.find(params[:id])
    render :show
  end

  def edit
    @comment = Comment.find(params[:id])
    if current_user.comments.include? @comment
      render :edit
    else
      redirect_to profile_path
    end  
  end

  def update
    comment = Comment.find(params[:id])
    if current_user.comments.include? comment
      comment.update_attributes(comment_params)
      redirect_to comment_path(comment)
    else
      redirect_to profile_path
    end
  end


  def destroy
    # find recipe
    # check curr user
    # recipe.destroy
    comment = Comment.find(params[:id])
    if current_user.comments.include? comment
      comment.destroy
      redirect_to comment_path
    else
      redirect_to comment_path
    end
  end



  private
    def comment_params
      params.require(:comment).permit(:topic,:body)
    end
end
