class Item < ApplicationRecord
  belongs_to :order

  TIPO = ['Social', 'Cotidiano']
end
