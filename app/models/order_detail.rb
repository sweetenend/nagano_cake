class OrderDetail < ApplicationRecord
  enum crafting_status: { impossible: 0, waiting: 1, confirmation: 2, completion: 3 }
  
  belongs_to :order
  belongs_to :item
end
