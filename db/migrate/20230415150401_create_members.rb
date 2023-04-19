class CreateMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :members do |t|
      t.string :name
      t.string :branch
      t.integer :urn
      t.string :role

      t.timestamps
    end
  end
end
