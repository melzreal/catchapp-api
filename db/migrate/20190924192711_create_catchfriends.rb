class CreateCatchfriends < ActiveRecord::Migration[5.2]
  def change
    create_table :catchfriends do |t|
      t.string :friendname
      t.string :contact
      t.boolean :reached_out
      
      t.timestamps
    end
  end
end
