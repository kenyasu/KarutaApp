class CreateKaruta < ActiveRecord::Migration[5.2]
  def change
    create_table :karuta do |t|
      t.string :waka

      t.timestamps
    end
  end
end
