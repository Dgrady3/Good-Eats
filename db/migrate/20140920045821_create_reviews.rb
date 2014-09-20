class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :rating, null: false
      t.integer :resturant_id, null: false
      t.string :description

      t.timestamps
    end
  end
end
