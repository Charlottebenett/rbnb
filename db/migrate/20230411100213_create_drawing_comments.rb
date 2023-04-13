class CreateDrawingComments < ActiveRecord::Migration[7.0]
  def change
    create_table :drawing_comments do |t|
      t.string :content
      t.references :user, null: false, foreign_key: true
      t.references :draw, null: false, foreign_key: true

      t.timestamps
    end
  end
end
