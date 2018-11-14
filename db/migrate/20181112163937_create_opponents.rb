class CreateOpponents < ActiveRecord::Migration[5.2]
  def change
    create_table :opponents do |t|
      t.string :name
      t.string :gender_id
      t.string :integer
      t.integer :grade_id
      t.integer :hand_id
      t.string :belongs
      t.integer :style_id
      t.integer :user_id

      t.timestamps
    end
  end
end
