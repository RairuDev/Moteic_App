class AddColumToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :job, :integer
    add_column :users, :income, :integer
    add_column :users, :area, :integer
  end
end
