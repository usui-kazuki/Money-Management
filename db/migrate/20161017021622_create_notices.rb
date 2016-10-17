class CreateNotices < ActiveRecord::Migration
  def change
    create_table :notices do |t|
      t.date :date
      t.string :title
      t.string :memo
      t.integer :loginuser_id

      t.timestamps null: false
    end
  end
end
