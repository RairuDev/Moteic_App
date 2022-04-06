class AddColumnUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :prefecture_id, :integer
  end
end
