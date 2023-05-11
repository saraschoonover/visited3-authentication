class AddUserIdToCities < ActiveRecord::Migration[7.0]
  def change
    add_reference :cities, :user, null: false, foreign_key: true
  end
end
