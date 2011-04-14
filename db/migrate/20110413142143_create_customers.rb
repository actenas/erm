class CreateCustomers < ActiveRecord::Migration
  def self.up
    create_table :customers do |t|
      t.string :identification
      t.string :name
      t.datetime :hire_date
      t.string :unit
      t.string :job
      t.datetime :birthday
      t.string :rg
      t.string :mother_name

      t.timestamps
    end
  end

  def self.down
    drop_table :customers
  end
end
