class UsersController < ApplicationController
  skip_before_action :login_required, only: [:new, :create,:edit,:update]
  def new
    @user = User.new
  end
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user.id)
    else
      render:new
    end
  end
  def show
    @user = User.find(params[:id])
  end
  def edit
    @user = User.find(params[:id])
    if @user.id == current_user.id
    else
      redirect_to user_path
    end
  end
  def update
    @user = User.find(params[:id])
    if @user.id == current_user.id
      @user.update(user_params)
      flash[:success] = "プロフィールが更新されました！"
      redirect_to user_path(@user)
    else
      render 'edit'
    end
  end
  private
  def user_params
    params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation, :image)
  end
end
