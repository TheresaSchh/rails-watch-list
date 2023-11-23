class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie

  validates :comment, length: { minimum: 6 }
  # validates :list_id, :movie_id, presence: true, uniqueness: true
  validates :movie, uniqueness: { scope: :list }
end
