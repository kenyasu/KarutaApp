class CreateOtetsukis < ActiveRecord::Migration[5.2]
  def change
    create_table :otetsukis do |t|
      t.integer :result_id
      t.integer :karuta_id
      t.integer :field_id

      t.timestamps
    end
  end
end
