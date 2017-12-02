class RemoveDefinitionFix < ActiveRecord::Migration[5.1]
  def change
  	remove_column :words, :definition
  end
end
