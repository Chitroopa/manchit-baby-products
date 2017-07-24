class AddImageToReview < ActiveRecord::Migration[5.1]
  def up
    add_attachment :reviews, :review_image
  end

  def down
    remove_attachment :reviews, :review_image
  end
end
