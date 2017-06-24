class AddAttributesToCompany < ActiveRecord::Migration[5.1]
  def change
    change_table :companies do |t|
      t.string :name,  null: false, default: ''
      t.string :phone, null: false, default: ''
      t.string :code,  null: false, default: ''
      t.string :url,  null: false, default: ''
      t.string :logo_url,  null: false, default: ''
      t.text :description
    end
  end
end
