class AddIdToCities < ActiveRecord::Migration[7.0]
  def change
    add_column :cities, :user_id, :integer
  end
end
