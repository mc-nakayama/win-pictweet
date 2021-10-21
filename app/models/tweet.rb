class Tweet < ApplicationRecord
  validates :text, presence: true
  has_many :comments
  belongs_to :user
end
