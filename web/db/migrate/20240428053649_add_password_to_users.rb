class AddPasswordToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :password, :string, null: false
    
    change_column_null :users, :name_kana, false
    change_column_null :users, :tel, false
    change_column_null :users, :maill, false
  end
end
