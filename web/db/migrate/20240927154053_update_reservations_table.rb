class UpdateReservationsTable < ActiveRecord::Migration[6.1]
  def up
    change_table :reservations do |t|
      t.date :day
      t.string :time
      t.datetime :start_time
    end

    # データ移行
    execute <<-SQL
      UPDATE reservations
      SET day = DATE(date),
          time = TIME_FORMAT(date, '%H:%i'),
          start_time = date
    SQL

    change_column_null :reservations, :day, false
    change_column_null :reservations, :time, false
    change_column_null :reservations, :start_time, false
    change_column_null :reservations, :user_id, false

    change_column :reservations, :user_id, :bigint
    change_column :reservations, :created_at, :datetime, precision: 6, null: false
    change_column :reservations, :updated_at, :datetime, precision: 6, null: false

    add_index :reservations, :user_id

    remove_column :reservations, :date
  end

  def down
    change_table :reservations do |t|
      t.datetime :date
    end

    execute <<-SQL
      UPDATE reservations
      SET date = start_time
    SQL

    change_column_null :reservations, :date, false

    remove_column :reservations, :day
    remove_column :reservations, :time
    remove_column :reservations, :start_time

    change_column :reservations, :user_id, :integer
    change_column_null :reservations, :user_id, true
    change_column :reservations, :created_at, :datetime, precision: null
    change_column :reservations, :updated_at, :datetime, precision: null

    remove_index :reservations, :user_id
  end
end