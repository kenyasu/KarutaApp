class Field < ApplicationRecord
  has_many :critical
  has_many :results, :through => :critical
  has_many :karutum, :through => :critical
  has_many :otetsuki
  has_many :results, :through => :otetsuki
  has_many :karutum, :through => :otetsuki
end
