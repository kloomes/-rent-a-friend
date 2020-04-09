class CreateFriends < ActiveRecord::Migration[6.0]
  def change
    create_table :friends do |t|
      t.string :name
      t.string :interest
      t.integer :price
      t.string :location
      t.text :bio

      t.timestamps
    end
  end
end
