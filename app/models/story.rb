class Story < ApplicationRecord
	validates :title, presence: true, length: { minimum: 5 }
  validates :blurb, presence: true, length: { minimum: 10 }
end
