class UsersController < ApplicationController
  def show
    #URLに記載されたIDを参考に必要なUserモデルを取得する、という処理
    @user = User.find(params[:id])
    #特定のユーザに関連付けられた全てを取得し@booksに渡す、という処理
    @books = @user.post_images
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end


  private

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end
end
