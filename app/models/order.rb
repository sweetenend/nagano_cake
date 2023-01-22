class Order < ApplicationRecord
    enum payment_method: { credit_card: 0, transfer: 1 }
    enum production_status: { waiting: 0, confirmation: 1, production: 2, preparation: 3, sent: 4 }
    
    belongs_to :customer
    has_many :order_datails, dependent: :destroy
end
