class PagesController < ApplicationController
  def index
    redirect_to company_path     if company_signed_in?
    redirect_to institution_path if institution_signed_in?

    render layout: 'hero'
  end
end
