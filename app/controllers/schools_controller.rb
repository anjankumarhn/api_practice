class SchoolsController < ApplicationController


  def new
    @school = School.new
  end



  def create
    @school = School.new(school_params)

    if @school.save
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

private

    def school_params
    params.require(:school).permit(:name, :phone, :address,:description, :status )
  end

end