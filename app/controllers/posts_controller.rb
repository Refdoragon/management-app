class PostsController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(post_params)
    if @user.save
      redirect_to posts_path
      flash[:notice] = "投稿を作成しました"
    else
      render :new
      flash.now[:notice] = "投稿を作成できませんでした"
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(post_params)
      redirect_to posts_path
      flash[:notice] = "投稿を編集しました"
    else
      render :edit
      flash.now[:notice] = "投稿を編集できませんでした"
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to posts_path
    flash[:notice] = "削除しました"
  end

  private

  def post_params
    params.require(:user).permit(:title, :start_at, :end_at, :all_day, :memo)
  end
end
