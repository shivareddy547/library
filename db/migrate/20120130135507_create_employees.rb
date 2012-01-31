class CreateEmployees < ActiveRecord::Migration
  def self.up
    create_table :employees do |t|
t.string :name
t.integer :empid
t.text :addr
t.string :technology
t.string :dateofbirth
t.string :qualification
t.string :sex
t.column :subject_id, :integer
      t.timestamps
    end
  end

  def self.down
    drop_table :employees
  end
end
