module Admin
  
  class ApplicationController < ::ApplicationController
    #layout 'admin'

    before_action :only_admin

    private

    def only_admin
      if current_user.nil?
        flash[:danger] = "ouaiiiis bah non.."
        redirect_to root_path
      end
    end
  end

end