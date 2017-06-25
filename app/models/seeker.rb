class Seeker < ApplicationRecord
  acts_as_taggable_on :skills, :languages

  def matching_jobs
    @matching_jobs ||=
      Job.tagged_with(skill_list + language_list, any: true)
  end
end
