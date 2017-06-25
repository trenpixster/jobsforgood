class Job < ApplicationRecord
  belongs_to :company

  acts_as_taggable_on :skills, :languages

  def at_least_one_match_for_institution(institution)
    @at_least_one_match_for_institution ||=
      institution.seekers.select do |seeker|
        (language_list & seeker.language_list).any? || (skill_list & seeker.skill_list).any?
      end
  end
end
