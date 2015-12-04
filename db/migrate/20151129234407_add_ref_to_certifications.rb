class AddRefToCertifications < ActiveRecord::Migration
  def change
    add_reference :certifications, :training, index: true, foreign_key: true
  end
end
