class PagesController < ApplicationController
  def index
    redirect_to company_path     if company_signed_in?
    redirect_to association_path if association_signed_in?

    render layout: 'hero'
  end
end
