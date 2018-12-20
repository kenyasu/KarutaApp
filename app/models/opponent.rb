class Opponent < ApplicationRecord
    has_many :results
    belongs_to :style
    belongs_to :gender
    belongs_to :hand
    belongs_to :ageClass
end
