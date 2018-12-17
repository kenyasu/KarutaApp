class Tournament < ApplicationRecord
  default_scope -> { order(date: :asc) }
  has_many :grades_tournament
  has_many :tournaments, :through => :grades_tournament
end
