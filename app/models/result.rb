class Result < ApplicationRecord
    has_many :avoidance
    has_many :karutum, :through => :avoidance
    has_many :joker
    has_many :karutum, :through => :joker
    has_many :critical
    has_many :karutum, :through => :critical
    has_many :fields, :through => :critical
    has_many :otetsuki
    has_many :karutum, :through => :otetsuki
    has_many :fields, :through => :otetsuki
end
