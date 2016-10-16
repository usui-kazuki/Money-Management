class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.date :date
      t.integer :price
      t.string :memo
      t.integer :familyuser_id
      t.string :payment
      t.integer :loginuser_id
      t.string :hanbetsu
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
