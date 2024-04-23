class RemoveMemoFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :memo, :string
  end
end
