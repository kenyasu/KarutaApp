class CreateResults < ActiveRecord::Migration[5.2]
  def change
    create_table :results do |t|
      t.date :date
      t.integer :gameType_id
      t.integer :gameCount_id
      t.integer :opponent_id
      t.integer :cardDifference
      t.text :comment
      t.integer :discussionOpp
      t.integer :discussionSelf
      t.integer :user_id
      t.integer :critical_id
      t.integer :avoidance_id
      t.integer :otetsuki_id
      t.integer :joker_id

      t.timestamps
    end
  end
end
