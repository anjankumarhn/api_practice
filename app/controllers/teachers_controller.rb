class TeachersController < ApplicationController

  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.new(teacher_params)

    if @teacher.save
      redirect_to root_path
    else
      redirect_to new_teacher_path
    end
  end

  private
  def teacher_params
    params.require(:teacher).permit(:name, :school_id )
  end

end