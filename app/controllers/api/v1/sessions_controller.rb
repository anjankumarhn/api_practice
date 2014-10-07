module Api
  module V1
    class SessionsController < BaseController


      def create
        @proc_code = Proc.new do
          user = User.authenticate(params[:email], params[:password])
          if user
          @data = User.where("id = ?",user.id)
          @success = true
           @errors = {}
          else
          @data = "invalid email or password"
          @success = true
          @errors = {}
          end


        end
      end
    end
  end
end