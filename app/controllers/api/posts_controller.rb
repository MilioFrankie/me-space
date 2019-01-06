class Api::PostsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user
  before_action :set_post, only: :destroy
  def index
    render json: @user.posts
  end

  def create
    post = @user.posts.new(user_params)
    if post.save
      render json: post
    else
      render json: post.errors
    end
  end

  def destroy
    @post.destroy
  end

  def update
  end

private

def set_user
@user = User.find(params[:user_id]
end

def user_params
params.require(:post).permit(:name, :last_name, :body)
end

def set_post
@post = @user.posts.find(params[:id])
end


end
