class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.date :date
      t.integer :starttime
      t.string :contact

      t.timestamps
    end
  end
end
