class ApplicationController < ActionController::Base
  before_action :set_locale

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
    default_url_options[:locale] = I18n.locale
  end

  def default_url_options(options = {})
    (I18n.locale.to_sym.eql?(I18n.default_locale.to_sym) ? {} : {locale: I18n.locale}).merge options
  end
end
