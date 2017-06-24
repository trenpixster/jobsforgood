class Seeker < ApplicationRecord
  acts_as_taggable_on :skills, :languages
end
