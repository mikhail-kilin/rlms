class ApplicationController < ActionController::Base
  AVAILABLE_LOCALES = %w(en ru).freeze

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_user_locale

  helper_method :anyone_signed_in?
  def anyone_signed_in?
    teacher_signed_in? || learner_signed_in?
  end

  def set_user_locale
    I18n.locale = if teacher_signed_in?
      current_teacher.locale
    elsif learner_signed_in?
      current_learner.locale
    elsif params[:locale].present? && (params[:locale].in? AVAILABLE_LOCALES)
      params[:locale]
    else
      browser_locale = extract_language_from_request
      browser_locale.in?(AVAILABLE_LOCALES) ? browser_locale : I18n.default_locale
    end
  end

  protected
  
  def extract_language_from_request
    language_data = request.env["HTTP_ACCEPT_LANGUAGE"]

    language_data.present? ? language_data.scan(/^[a-z]{2}/).first : "ru"
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :locale])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :locale])
  end
end
