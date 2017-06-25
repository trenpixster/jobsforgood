class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def require_company
    flash[:error] = 'Must be logged in as a company to access this section.'
    redirect_to :root unless company_signed_in?
  end

  def require_institution
    flash[:error] = 'Must be logged in as an institution to access this section.'
    redirect_to :root unless institution_signed_in?
  end

  protected
  def signed_in?
    company_signed_in? or institution_signed_in?
  end
end
