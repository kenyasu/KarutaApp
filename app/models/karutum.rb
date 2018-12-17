class Karutum < ApplicationRecord
    has_many :avoidances
    has_many :results, :through => :avoidance
    has_many :jokers
    has_many :results, :through => :joker
    has_many :criticals
    has_many :results, :through => :critical
    has_many :fields, :through => :critical
    has_many :otetsukis
    has_many :results, :through => :otetsuki
    has_many :fields, :through => :otetsuki
end
