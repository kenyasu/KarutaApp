class Tournament < ApplicationRecord
  default_scope -> { order(date: :asc) }
end
