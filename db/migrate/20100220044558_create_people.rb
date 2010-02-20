class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :people do |t|
      t.string :name
      t.integer :age
      t.integer :group_id
      t.boolean :hidden

      t.timestamps
    end
  end

  def self.down
    drop_table :people
  end
end
