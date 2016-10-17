class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.date :date
      t.integer :goalmoney
      t.string :loginuser_id

      t.timestamps null: false
    end
  end
end
