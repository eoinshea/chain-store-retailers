class Users::SessionsController < Devise::SessionsController
  # before_filter :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  def new
    super
  end

  # POST /resource/sign_in
  def create
    self.resource = warden.authenticate!(auth_options)
    set_flash_message(:notice, :signed_in) if is_flashing_format?
    sign_in(resource_name, resource)
    yield resource if block_given?
    respond_with resource, location: after_sign_in_path_for(resource)
  end

  # DELETE /resource/sign_out
  def destroy
    signed_out = (Devise.sign_out_all_scopes ? sign_out : sign_out(resource_name))
    set_flash_message :notice, :signed_out if signed_out && is_flashing_format?
    current_user = nil
    session = nil
    respond_to_on_destroy
  end

  private

  def sign_up_params
    params.require(:user).permit(:full_name, :location, :agent_id, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:full_name, :location, :agent_id, :email, :password, :password_confirmation, :current_password)
  end

end
