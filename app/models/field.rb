class Field < ApplicationRecord
  has_many :criticals
  has_many :results, :through => :criticals
  has_many :karutum, :through => :criticals
  has_many :otetsukis
  has_many :results, :through => :otetsukis
  has_many :karutum, :through => :otetsukis
end
