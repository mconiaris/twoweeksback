class Story < ApplicationRecord
	validates :title, presence: true, length: { 5..25 }
  validates :blurb, presence: true, length: { minimum: 10 }
  validates :link, presence: true
  validates :date, presence: true
end
