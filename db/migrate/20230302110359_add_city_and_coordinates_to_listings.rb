class AddCityAndCoordinatesToListings < ActiveRecord::Migration[7.0]
  def change
    add_column :listings, :city, :string
    add_column :listings, :latitude, :float
    add_column :listings, :longitude, :float
  end
end
