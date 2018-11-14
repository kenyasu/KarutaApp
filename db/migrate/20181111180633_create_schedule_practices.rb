class CreateSchedulePractices < ActiveRecord::Migration[5.2]
  def change
    create_table :schedule_practices do |t|
      t.date :date
      t.time :time
      t.string :place
      t.string :note
      t.integer :user_id

      t.timestamps
    end
  end
end
