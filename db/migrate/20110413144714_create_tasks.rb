class CreateTasks < ActiveRecord::Migration
  def self.up
    create_table :tasks do |t|
      t.references :ticket_id, :null => false
      t.text :message
      t.string :status
      t.boolean :invalid

      t.timestamps
    end
  end

  def self.down
    drop_table :tasks
  end
end
