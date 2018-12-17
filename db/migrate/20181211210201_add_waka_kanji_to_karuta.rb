class AddWakaKanjiToKaruta < ActiveRecord::Migration[5.2]
  def change
    add_column :karuta, :waka_kanji, :string
  end
end
