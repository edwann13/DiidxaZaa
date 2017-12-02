class AddZapotecoCol < ActiveRecord::Migration[5.1]
  def change
  	add_column :words, :zapoteco, :string
  end
end
