module DeviseWhitelist
extend ActiveSupport::Concern

  included do
    before_filter :configure_permitted_parameters, if: :devise_controller?
  #this means I want to add and run a method if I am communicating with devise
  end
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])

  end
end
