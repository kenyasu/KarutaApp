class Grade < ApplicationRecord
  has_many :grades_tournament
  has_many :tournaments, :through => :grades_tournament
end
