class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.integer :doctor_id
      t.string :time_slot
      t.boolean :available

      t.timestamps
    end
  end
end
