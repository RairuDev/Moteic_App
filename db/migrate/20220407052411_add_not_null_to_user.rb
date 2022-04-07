class AddNotNullToUser < ActiveRecord::Migration[6.1]
  def change
    change_column :users, :name, :string, null: false
    change_column :users, :gender, :integer, null: false
    change_column :users, :age, :integer, null: false
    change_column :users, :body_shape, :integer, null: false
    change_column :users, :job, :integer, null: false
    change_column :users, :income, :integer, null: false
    change_column :users, :prefecture_id, :integer, null: false
  end
end
