class Story < ApplicationRecord
	validates :title, presence: true, length: { in: 5..25 }
  validates :blurb, presence: true, length: { minimum: 10 }
  validates :link, presence: true
  validates :date, presence: { message: "field cannot be blank and must be filled in with a valid date." }
end
