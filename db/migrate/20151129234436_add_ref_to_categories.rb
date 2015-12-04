class AddRefToCategories < ActiveRecord::Migration
  def change
    add_reference :categories, :training, index: true, foreign_key: true
  end
end
