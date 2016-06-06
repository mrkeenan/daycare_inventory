class ClassesController < ApplicationController
  def index
    @classes = Class.all
  end

  def show
    @class = Class.find(params[:id])
  end

  def new
    @class = Class.new
  end

  def create
    @class = Class.new
    @class.room = params[:room]
    @class.teacher_name1 = params[:teacher_name1]
    @class.teacher_name2 = params[:teacher_name2]
    @class.teacher_name3 = params[:teacher_name3]

    if @class.save
      redirect_to "/classes", :notice => "Class created successfully."
    else
      render 'new'
    end
  end

  def edit
    @class = Class.find(params[:id])
  end

  def update
    @class = Class.find(params[:id])

    @class.room = params[:room]
    @class.teacher_name1 = params[:teacher_name1]
    @class.teacher_name2 = params[:teacher_name2]
    @class.teacher_name3 = params[:teacher_name3]

    if @class.save
      redirect_to "/classes", :notice => "Class updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @class = Class.find(params[:id])

    @class.destroy

    redirect_to "/classes", :notice => "Class deleted."
  end
end
