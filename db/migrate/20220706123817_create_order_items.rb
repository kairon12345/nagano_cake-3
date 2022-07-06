class CreateOrderItems < ActiveRecord::Migration[5.2]
  def change
    create_table :order_items do |t|

      t.timestamps
      t.integer :order_id
      t.integer :item_id
      t.integer :amount
      t.integer :price
      t.integer :status

    end
  end
end
