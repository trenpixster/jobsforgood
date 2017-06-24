class AddAttributesToSeeker < ActiveRecord::Migration[5.1]
  def change
    add_column :seekers, :name,     :string, default: '', null: false
    add_column :seekers, :phone,    :string, default: '', null: false
    add_column :seekers, :country,  :string, default: '', null: false
    add_column :seekers, :city,     :string, default: '', null: false
    add_column :seekers, :language, :string, default: '', null: false
    add_column :seekers, :has_permit, :datetime
  end
end
