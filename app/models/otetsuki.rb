class Otetsuki < ApplicationRecord
  belongs_to :result
  belongs_to :karuta
  belongs_to :field
end
