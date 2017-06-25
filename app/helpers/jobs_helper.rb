module JobsHelper
  def any_filters_applied?
    params[:company_id] || params[:language] || params[:skill]
  end
end
