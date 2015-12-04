class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :org_name
      t.string :org_address
      t.string :org_city
      t.string :org_state
      t.string :org_phone
      t.string :org_website
      t.string :org_contactphone
      t.string :org_contactname
      t.boolean :fes_certified
      t.string :member_type
      t.date :membership_date

      t.timestamps null: false
    end
  end
end
