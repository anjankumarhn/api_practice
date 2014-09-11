module Api
module V1
class TeachersController < BaseController
before_filter :parse_pagination_params, only: :index

def index
@proc_code = Proc.new do
@school = School.find(params[:id])
@data = Teacher.where("school_id = ?", @school.id)
@success = true
@errors = {}
end
end
end
end
end