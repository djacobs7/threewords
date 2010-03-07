class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.integer :snid, :limit => 8
      t.integer :gender
      t.integer :likes

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
