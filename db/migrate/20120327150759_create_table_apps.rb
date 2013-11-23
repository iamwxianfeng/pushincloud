class CreateTableApps < ActiveRecord::Migration
  def up
    create_table :apps do |t|
      t.integer :user_id
      t.string :key

      t.timestamps
    end
    add_index :apps, :user_id
  end

  def down
  end
end
