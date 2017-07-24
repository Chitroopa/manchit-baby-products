class CreateOrdersAndOrderItems < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :status
      t.integer :account_id
      t.decimal :total_price

      t.timestamps
    end
    create_table :order_items do |t|
        t.integer :quantity
        t.integer :product_id
        t.integer :order_id

      t.timestamps
    end
    create_table :reviews do |t|
      t.string :title
      t.text :content
      t.integer :product_id

      t.timestamps
    end
  end
end
