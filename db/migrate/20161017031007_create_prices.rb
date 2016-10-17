class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.date :date
      t.integer :price
      t.string :memo
      t.string :familyuser_id
      t.string :payment
      t.string :loginuser_id
      t.string :type
      t.string :category_id

      t.timestamps null: false
    end
  end
end
