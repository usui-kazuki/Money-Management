class CreateFamilyusers < ActiveRecord::Migration
  def change
    create_table :familyusers do |t|
      t.string :name
      t.integer :loginuser_id

      t.timestamps null: false
    end
  end
end
