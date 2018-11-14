class CreateTournaments < ActiveRecord::Migration[5.2]
  def change
    create_table :tournaments do |t|
      t.string :name
      t.string :host
      t.date :date
      t.string :place
      t.string :class
      t.string :entryFee
      t.date :applicationPeriod
      t.string :capacity
      t.string :access

      t.timestamps
    end
  end
end
