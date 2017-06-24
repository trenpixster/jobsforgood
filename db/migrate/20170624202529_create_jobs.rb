class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :city
      t.string :country
      t.text :description
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
