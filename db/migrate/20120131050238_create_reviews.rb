class CreateReviews < ActiveRecord::Migration
  def self.up
    create_table :reviews do |t|
t.column :review ,:string
t.column :book_id, :integer
      t.timestamps
    end
  end

  def self.down
    drop_table :reviews
  end
end
