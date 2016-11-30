class Users::RegistrationsController < Devise::RegistrationsController
 #before_filter	:configure_sign_up_params ,:only => [:create]
	  # def new
	  #   super
	  # end

  	def create
	    build_resource(sign_up_params)
	    yield resource if block_given?
	    if resource.save
	      if resource.active_for_authentication?
	        set_flash_message :notice, :signed_up if is_flashing_format?
	        sign_up(resource_name, resource)
	        respond_with resource, location: after_sign_up_path_for(resource)
	      else
	        set_flash_message :notice, :"signed_up_but_#{resource.inactive_message}" if is_flashing_format?
	        expire_data_after_sign_in!
	        respond_with resource, location: after_inactive_sign_up_path_for(resource)
	        redirect_to thanks_for_registering_path
	      end
	    else
	      clean_up_passwords resource
	      @validatable = devise_mapping.validatable?
	      if @validatable
	        @minimum_password_length = resource_class.password_length.min
	      end
	      respond_with resource
	    end
    end

	  # def update
	  #   super
	  # end



  before_filter :configure_permitted_parameters

  protected

  # my custom fields are :name, :heard_how
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) do |u|
   		u.permit(:location, :agent_id , :email, :password, :password_confirmation)
    end
    devise_parameter_sanitizer.for(:account_update) do |u|
     	u.permit(:location, :agent_id , :email, :password, :password_confirmation)
    end
  end


  

  # def sign_up_params
  #   params.require(:user).permit(:full_name, :location, :agent_id, :approved, :email, :password, :password_confirmation)
  # end

    # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # You can put the params you want to permit in the empty array.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.for(:sign_up) << :full_name
  # end

  # You can put the params you want to permit in the empty array.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.for(:account_update) << :attribute
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end


end