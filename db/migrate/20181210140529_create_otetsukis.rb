class CreateOtetsukis < ActiveRecord::Migration[5.2]
  def change
    create_table :otetsukis do |t|
      t.references :result, foreign_key: true
      t.references :karuta, foreign_key: true
      t.references :field, foreign_key: true

      t.timestamps
    end
  end
end
