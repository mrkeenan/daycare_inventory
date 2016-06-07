class UsersController < ApplicationController

  def index
    if Child.all.empty?
      redirect_to "/children/new", :notice => "Please add at least one child"
    elsif Family.find_by(:user_id => current_user.id)
      redirect_to "/children/index", :notice => "Please select at least one child"
    else
      @users = User.all
    end
  end

  def show
    @user = User.find_by(:id => params[:id])
  end

end
