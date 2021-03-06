class CreateKeyValues < ActiveRecord::Migration
  def change
    create_table :key_values do |t|
      t.string :key, :null => false
      t.text :value
      t.timestamps
    end
    
    add_index :key_values, :key, :unique => true
  end
end
