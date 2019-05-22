class SessionsController < Devise::SessionsController
  protected

  def after_sign_in_path_for(resource)
    user_path(resource)  # Or :prefix_to_your_route
  end
end
