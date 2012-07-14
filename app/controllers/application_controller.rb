class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_company_owner?, :current_company

  def current_company
    @current_company ||= current_user.company
  end

  def current_company_owner?
    current_company.owner == current_user
  end
end
