class UsersController < ApplicationController
  skip_before_action :auth, only: [:new, :create]

  def index
    @users = User.all
  end

  def show
    @user = User.find_by(id: params["id"])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params["user"])
    @user.admin == false
    if @user.save
      redirect_to projects_url
    else
      render "new"
    end
  end

  def edit
    @user = User.find_by(id: params["id"])
  end

  def update
   @user = User.find_by(id: params["id"])
    if @user.update(params["user"])
      redirect_to projects_url
    else
      render "edit"
    end
  end

  def destroy
    @user = User.find_by(id: params["id"])
    session["user_id"] = nil
    @user.destroy
    redirect_to projects_url, alert: "Sorry to see you leave"
  end

end