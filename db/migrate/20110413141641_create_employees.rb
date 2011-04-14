class CreateEmployees < ActiveRecord::Migration
  def self.up
    create_table :employees do |t|
      t.string :identification, :null => false
      t.string :name, :null => false
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
    drop_table :employees
  end
end
