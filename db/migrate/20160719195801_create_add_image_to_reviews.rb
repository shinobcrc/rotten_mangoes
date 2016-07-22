class CreateAddImageToReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :add_image_to_reviews do |t|
      t.string :name
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
