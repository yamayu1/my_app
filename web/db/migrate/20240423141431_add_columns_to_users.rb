class AddColumnsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name_kana, :string
    add_column :users, :tel, :integer
    add_column :users, :maill, :string
  end
end
