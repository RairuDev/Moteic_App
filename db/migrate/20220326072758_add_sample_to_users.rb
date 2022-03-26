class AddSampleToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :name, :string
    add_column :users, :gender, :integer
    add_column :users, :age, :integer
    add_column :users, :body_shape, :integer
  end
end
