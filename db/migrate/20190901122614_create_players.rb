class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :age
      t.integer :height
      t.string :role
      t.integer :country_id

      t.timestamps
    end
  end
end
