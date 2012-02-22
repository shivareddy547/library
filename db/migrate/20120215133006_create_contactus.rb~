class CreateContactus < ActiveRecord::Migration
  def self.up
    create_table :contactus do |t|
t.string :name
t.integer :budget
t.string :email
t.text :message

      t.timestamps
    end

Contactus.create :budget => "100"
    Contactus.create :budget => "100"
    Contactus.create :budget => "150"
   Contactus.create :budget => "200"
   Contactus.create :budget => "300"
Contactus.create :budget => "500"


  end

  def self.down
    drop_table :contactus
  end
end
