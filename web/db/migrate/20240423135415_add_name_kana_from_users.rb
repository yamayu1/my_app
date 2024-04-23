class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name_kana
      t.integer :tel
      t.string :maill
    end
  end
end
