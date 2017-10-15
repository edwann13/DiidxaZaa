class CreateWords < ActiveRecord::Migration[5.1]
  def change
    create_table :words do |t|
      t.string :word
      t.string :definition
      t.string :category

      t.timestamps
    end
  end
end
