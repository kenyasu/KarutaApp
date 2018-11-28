class AddDetailsToTournament < ActiveRecord::Migration[5.2]
  def change
    add_column :tournaments, :secondPlace, :string
    add_column :tournaments, :others, :text
    add_column :tournaments, :number, :string
  end
end
