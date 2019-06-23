class Job < ApplicationRecord
  has_many :responsibilities, dependent: :destroy
  has_many :skills, dependent: :destroy
end
