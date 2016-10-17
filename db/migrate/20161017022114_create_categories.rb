class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :categoryname
      t.string :loginuser_id
      t.string :type

      t.timestamps null: false
    end
  end
end
