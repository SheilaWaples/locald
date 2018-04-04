class CreateExperiences < ActiveRecord::Migration[5.1]
  def change
    create_table :experiences do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.string :image

      t.timestamps
    end
  end
end
