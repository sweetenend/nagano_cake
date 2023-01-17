class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|

      t.string :name, null: false
      t.string :postal_code, null: false
      t.string :address, null: false
      t.integer :freight, null: false
      t.integer :billto, null: false
      t.integer :payment_method, null: false
      t.integer :production_status, null: false


      t.timestamps
    end
  end
end
