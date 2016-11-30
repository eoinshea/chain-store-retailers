class RegistrationsController < Devise::RegistrationsController

	  # def new
	  #   super
	  # end

	  # def create
	  #   # add custom create logic here
	  # end

	  # def update
	  #   super
	  # end



  private

	  def sign_up_params
	    params.require(:user).permit(:full_name, :location, :agent_id, :email, :password, :password_confirmation, :approved)
	  end

	  def account_update_params
	    params.require(:user).permit(:full_name, :location, :agent_id, :email, :password, :password_confirmation, :current_password, :approved)
	  end
 


end