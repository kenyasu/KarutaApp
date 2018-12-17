class CreateGradesTournaments < ActiveRecord::Migration[5.2]
  def change
    create_table :grades_tournaments do |t|
      t.references :grades, foreign_key: true
      t.references :tournament, foreign_key: true

      t.timestamps
    end
  end
end
