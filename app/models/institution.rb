class Institution < ApplicationRecord
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable

  has_many :seekers
end
