class CreateDraws < ActiveRecord::Migration[7.0]
  def change
    create_table :draws do |t|
      t.string :title
      t.string :medium
      t.integer :price

      t.timestamps
    end
  end
end
