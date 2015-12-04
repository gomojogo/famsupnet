class AddRefToTrainings < ActiveRecord::Migration
  def change
    add_reference :trainings, :certification, index: true, foreign_key: true
  end
end
