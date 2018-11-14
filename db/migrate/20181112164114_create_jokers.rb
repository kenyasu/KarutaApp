class CreateJokers < ActiveRecord::Migration[5.2]
  def change
    create_table :jokers do |t|
      t.integer :result_id
      t.integer :karuta_id

      t.timestamps
    end
  end
end
