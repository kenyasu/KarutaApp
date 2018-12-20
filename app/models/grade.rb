class Grade < ApplicationRecord
  has_many :grades_tournaments
  has_many :tournaments, :through => :grades_tournaments
end
