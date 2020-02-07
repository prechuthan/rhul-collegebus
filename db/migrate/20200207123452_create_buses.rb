class CreateBuses < ActiveRecord::Migration[6.0]
  def change
    create_table :buses do |t|
      t.string :service_number

      t.timestamps
    end
  end
end
