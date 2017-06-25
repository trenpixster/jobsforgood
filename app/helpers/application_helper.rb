module ApplicationHelper
  def sign_out_path
    if institution_signed_in?
      destroy_institution_session_path
    elsif company_signed_in?
      destroy_company_session_path
    end
  end

  def all_tags_for(context)
    ActsAsTaggableOn::Tagging.where(context: context).includes(:tag).map { |tagging| tagging.tag.name }.uniq.join(',')
  end

  def all_skills
    all_tags_for(:skills)
  end

  def all_languages
    all_tags_for(:languages)
  end
end
