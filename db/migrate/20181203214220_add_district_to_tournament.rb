class AddDistrictToTournament < ActiveRecord::Migration[5.2]
  def change
    add_column :tournaments, :district, :string
  end
end
