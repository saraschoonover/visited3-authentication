class CreateCities < ActiveRecord::Migration[7.0]
  def change
    create_table :cities do |t|
      t.string :name
      t.string :country
      t.string :continent
      t.string :restaurants
      t.string :coffee_shops
      t.string :neighborhoods
      t.string :parks
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
