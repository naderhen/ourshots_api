class AddImageColumnsToSelfies < ActiveRecord::Migration
  def change
  	add_attachment :selfies, :image
  end
end
