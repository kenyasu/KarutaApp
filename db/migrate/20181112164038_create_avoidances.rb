class CreateAvoidances < ActiveRecord::Migration[5.2]
  def change
    create_table :avoidances do |t|
      t.integer :result_id
      t.integer :karuta_id

      t.timestamps
    end
  end
end
