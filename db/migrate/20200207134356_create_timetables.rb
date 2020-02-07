class CreateTimetables < ActiveRecord::Migration[6.0]
  def change
    create_table :timetables do |t|
      t.references :bus, null: false, foreign_key: true

      t.time :departure_time
      t.time :arrival_time

      t.references :departure_stop, null: false, foreign_key: { to_table: :stops }
      t.references :arrival_stop, null: false, foreign_key: { to_table: :stops }

      t.boolean :is_operational_weekday
      t.boolean :is_operational_weekend
      t.boolean :is_operational_term
      t.boolean :is_operational_winter
      t.boolean :is_operational_easter
      t.boolean :is_operational_summer

      t.timestamps
    end
  end
end
