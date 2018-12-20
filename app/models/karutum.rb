class Karutum < ApplicationRecord
    has_many :avoidances
    has_many :results, :through => :avoidances
    has_many :jokers
    has_many :results, :through => :jokers
    has_many :criticals
    has_many :results, :through => :criticals
    has_many :fields, :through => :criticals
    has_many :otetsukis
    has_many :results, :through => :otetsukis
    has_many :fields, :through => :otetsukis
end
