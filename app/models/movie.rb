class Movie < ApplicationRecord
  has_many :bookmarks
  # has_many :lists, through: :bookmarks
  # about above line, not need to define all the possible method. You can define this as well.

  validates :title, :overview, uniqueness: true, presence: true
end
