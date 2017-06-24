class Job < ApplicationRecord
  belongs_to :company

  acts_as_taggable_on :skills, :languages
end
