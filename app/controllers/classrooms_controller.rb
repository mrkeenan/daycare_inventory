class ClassroomsController < ApplicationController
  def index
    @classrooms = Classroom.all
  end

  def show
    @classroom = Classroom.find(params[:id])
  end

  def new
    @classroom = Classroom.new
  end

  def create
    @classroom = Classroom.new
    @classroom.room = params[:room]
    @classroom.teacher_name_1 = params[:teacher_name_1]
    @classroom.teacher_name_2 = params[:teacher_name_2]
    @classroom.teacher_name_3 = params[:teacher_name_3]

    if @classroom.save
      redirect_to "/classrooms", :notice => "Class created successfully."
    else
      render 'new'
    end
  end

  def edit
    @classroom = Classroom.find(params[:id])
  end

  def update
    @classroom = Classroom.find(params[:id])

    @classroom.room = params[:room]
    @classroom.teacher_name_1 = params[:teacher_name_1]
    @classroom.teacher_name_2 = params[:teacher_name_2]
    @classroom.teacher_name_3 = params[:teacher_name_3]

    if @classroom.save
      redirect_to "/classrooms", :notice => "Class updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @class = Classroom.find(params[:id])

    @classroom.destroy

    redirect_to "/classrooms", :notice => "Class deleted."
  end
end
