class UsersController < ApplicationController

  def index
    if Child.all.empty?
      redirect_to "/children/new", :notice => "Please add at least one child"
    elsif Family.find_by(:user_id => current_user.id).nil?
      redirect_to "/my_children", :notice => "Please select at least one child"
    else
      @users = User.all
    end
  end

  def show
    @user = User.find_by(:id => params[:id])
  end

  def my_children
    @children = Child.all
    @my_children = current_user.children
    @my_families = current_user.families
  end

end
