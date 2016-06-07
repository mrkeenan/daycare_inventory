class FamiliesController < ApplicationController
  def index
    @families = Family.all
  end

  def show
    @family = Family.find(params[:id])
  end

  def new
    @family = Family.new
  end

  def create
    @family = Family.new
    @family.user_id = params[:user_id]
    @family.child_id = params[:child_id]

    if @family.save
      redirect_to :back
    else
      render 'new'
    end
  end

  def edit
    @family = Family.find(params[:id])
  end

  def update
    @family = Family.find(params[:id])

    @family.user_id = params[:user_id]
    @family.child_id = params[:child_id]

    if @family.save
      redirect_to "/families", :notice => "Family updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @family = Family.find(params[:id])

    @family.destroy

    redirect_to "/families", :notice => "Family deleted."
  end
end
