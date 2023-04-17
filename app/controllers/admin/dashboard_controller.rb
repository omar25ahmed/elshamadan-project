class Trestle::DashboardController < Trestle::ApplicationController
  def index
    redirect_to logout_path unless current_user.is_admin?
  end
end