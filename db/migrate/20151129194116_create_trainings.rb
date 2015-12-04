class CreateTrainings < ActiveRecord::Migration
  def change
    create_table :trainings do |t|
      t.string :title
      t.text :description
      t.date :date
      t.string :location_address
      t.string :location_city
      t.string :location_state
      t.string :trainer1
      t.string :trainer2
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
