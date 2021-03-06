class Admins::SessionsController < Devise::SessionsController

  # GET /resource/sign_in
  def new
    flash[:alert] = 'Access Denied - Please Login' if params[:denied].present?
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
end
