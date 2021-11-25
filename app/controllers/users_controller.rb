class UsersController < ApplicationController
  def index 
  end

  def new
  end

  def create
  end

  def show
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(users_params)
      flash[:notice] = "プロフィールを更新しました"
      redirect_to edit_user_path(@user)
    else
      flash[:alert] = "プロフィールを更新できませんでした"
      redirect_to edit_user_path(@user)
    end
  end

  def destroy
  end
end

private
def users_params
  params.require(:user).permit(:name, :meintro, :image)
end
