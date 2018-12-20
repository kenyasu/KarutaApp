class Result < ApplicationRecord
    has_many :avoidances, dependent: :destroy
    has_many :karuta, :through => :avoidances
    accepts_nested_attributes_for :avoidances, allow_destroy: true
    has_many :jokers, dependent: :destroy
    has_many :karuta, :through => :jokers
    accepts_nested_attributes_for :jokers, allow_destroy: true
    has_many :criticals, dependent: :destroy
    has_many :karuta, :through => :criticals
    has_many :fields, :through => :criticals
    accepts_nested_attributes_for :criticals, allow_destroy: true
    has_many :otetsukis, dependent: :destroy
    has_many :karuta, :through => :otetsukis
    has_many :fields, :through => :otetsukis
    accepts_nested_attributes_for :otetsukis, allow_destroy: true
    belongs_to :gameType
    belongs_to :gameCount
    belongs_to :opponent
    belongs_to :user
end
