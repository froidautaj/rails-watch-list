class Bookmark < ApplicationRecord
  belongs_to :movies
  belongs_to :lists

  validates :movies, presence: true
  validates :lists, presence: true
  validates :comment, presence: true, length: { minimum: 6 }
  validates_uniqueness_of :movies_id, { scope: :lists_id }
end
