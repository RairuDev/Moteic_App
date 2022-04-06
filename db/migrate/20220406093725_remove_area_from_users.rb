class RemoveAreaFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :area, :integer
  end
end
