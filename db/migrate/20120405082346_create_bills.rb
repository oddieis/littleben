class CreateBills < ActiveRecord::Migration
  def self.up
    create_table :bills do |t|
      t.string :title
      t.text :summay
      t.text :body
      t.integer :sponsor_id
      t.integer :vote_plus
      t.integer :vote_minus
      t.datetime :created_at

      t.timestamps
    end
  end

  def self.down
    drop_table :bills
  end
end
