class CreateLoginusers < ActiveRecord::Migration
  def change
    create_table :loginusers do |t|
      t.string :password
      t.string :username

      t.timestamps null: false
    end
  end
end
