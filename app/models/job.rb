class Job < ApplicationRecord
  has_many :responsibilities
  has_many :skills
end
