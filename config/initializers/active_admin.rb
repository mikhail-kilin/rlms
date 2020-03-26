ActiveAdmin.setup do |config|
  config.site_title = "Rlms"

  config.authentication_method = :authenticate_admin_user!

  config.current_user_method = :current_admin_user

  config.logout_link_path = :destroy_admin_user_session_path

  config.root_to = 'admin_users#index'

  config.batch_actions = true

  config.filter_attributes = [:encrypted_password, :password, :password_confirmation]

  config.localize_format = :long

end