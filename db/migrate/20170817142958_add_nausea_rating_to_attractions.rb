class AddNauseaRatingToAttractions < ActiveRecord::Migration
  def change
  	add_column :attractions, :nausea_rating, :integer
  end
end
