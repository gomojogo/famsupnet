class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :organization_name
      t.string :email
      t.string :phone
      t.string :trainings_taken
      t.string :certifications_earned
      t.string :trainings_registered

      t.timestamps null: false
    end
  end
end
