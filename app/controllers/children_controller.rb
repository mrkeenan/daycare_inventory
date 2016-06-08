class ChildrenController < ApplicationController
  def index
    @children = Child.all
  end

  def show
    @child = Child.find(params[:id])
    @item = Item.new
  end

  def new
    @child = Child.new
  end

  def create
    @child = Child.new
    @child.class_id = params[:class_id]
    @child.dob = Chronic.parse(params[:dob])
    @child.last_name = params[:last_name]
    @child.first_name = params[:first_name]

    if @child.save
      @family = Family.new
      @family.user_id = current_user.id
      @family.child_id = @child.id

      @family.save

      redirect_to "/users"
    else
      render 'new'
    end
  end

  def edit
    @child = Child.find(params[:id])
  end

  def update
    @child = Child.find(params[:id])

    @child.class_id = params[:class_id]
    @child.dob = params[:dob]
    @child.last_name = params[:last_name]
    @child.first_name = params[:first_name]

    if @child.save
      redirect_to "/children", :notice => "Child updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @child = Child.find(params[:id])

    @child.destroy

    redirect_to "/children", :notice => "Child deleted."
  end
end
