module Api
module V1
class TeachersController < BaseController
before_filter :parse_pagination_params, only: :index
def index
@proc_code = Proc.new do
@data = Teacher.where("school_id = 12345").order("name asc").page(@current_page).per(@per_page).all
@success = true
@errors = {}
end
end
end
end
end