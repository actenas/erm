class CreateTickets < ActiveRecord::Migration
  def self.up
    create_table :tickets do |t|
      t.string :number, :null => false
      t.references :customer_id, :null => false
      t.references :faq_id
      t.text :message
      t.string :status
      t.boolean :invalid

      t.timestamps
    end
  end

  def self.down
    drop_table :tickets
  end
end
