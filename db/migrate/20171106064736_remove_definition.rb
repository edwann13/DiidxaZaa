class RemoveDefinition < ActiveRecord::Migration[5.1]
  def change
  	remove_column :words, :denifition
  end
end
