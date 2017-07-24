class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.integer :avg_rating
      t.string :manifacture_name
      t.string :category

      t.timestamps
    end
  end
end
