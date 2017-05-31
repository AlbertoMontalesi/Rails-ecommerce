module DeviseWhitelist
  extend ActiveSupport::Concern
  included do
    before_filter :configure_permitted_parameters, if: :devise_controller?
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :profile_url, :description, :address])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :profile_url, :description, :address])
  end
end
