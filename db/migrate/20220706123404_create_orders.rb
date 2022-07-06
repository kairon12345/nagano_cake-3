class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|

      t.timestamps
      t.integer :customer_id
      t.string :postal_code
      t.string :address
      t.string :name
      t.integer :total
      t.integer :postage
      t.integer :payment_method
      t.integer :payment_total
      t.integer :status
    end
  end
end
