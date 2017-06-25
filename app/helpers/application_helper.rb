module ApplicationHelper
  def sign_out_path
    if institution_signed_in?
      destroy_institution_session_path
    elsif company_signed_in?
      destroy_company_session_path
    end
  end
end
