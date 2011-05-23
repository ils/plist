class CreateRequests < ActiveRecord::Migration
  def self.up
    create_table :requests do |t|
      t.string :rname
      t.date :gdate
      t.string :tname1
      t.string :tname2
      t.string :tname3
      t.string :tname4

      t.timestamps
    end
  end

  def self.down
    drop_table :requests
  end
end
