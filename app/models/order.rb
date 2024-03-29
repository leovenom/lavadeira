class Order < ApplicationRecord
  has_many :items, dependent: :destroy
  belongs_to :client

  validates :status, inclusion: { in: [ 'pending', 'delivered' ] }

  STATUS_OPT = [
    ['Pending', 'pending'],
    ['Delivered', 'delivered']
  ]
end
