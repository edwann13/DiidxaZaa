class AddTranslatedWordRemoveDefinition < ActiveRecord::Migration[5.1]
  def change
    add_column :words, :spanish, :string
  end
end
