class CreateResturants < ActiveRecord::Migration
  def change
    create_table :resturants do |t|
      t.string :name, null: false
      t.string :address, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.string :zipcode, null: false
      t.text :description
      t.text :category

      t.timestamps
    end
  end
end
