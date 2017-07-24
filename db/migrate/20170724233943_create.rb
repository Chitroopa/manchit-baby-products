class Create < ActiveRecord::Migration[5.1]
  def change
    create_table :product_details do |t|
      t.string :title
      t.text :description
      t.integer :product_id
      t.integer :title_type

      t.timestamps
    end
  end
end
