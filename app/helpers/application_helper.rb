module ApplicationHelper
  def rtl_direction?
    I18n.locale == :ar
  end
end
