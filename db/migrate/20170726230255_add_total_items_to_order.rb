class AddTotalItemsToOrder < ActiveRecord::Migration[5.1]
  def change
    add_column(:orders, :no_of_items, :integer)
  end
end
