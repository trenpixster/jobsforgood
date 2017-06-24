class AddAssociationIdToSeekers < ActiveRecord::Migration[5.1]
  def change
    change_table :seekers do |t|
      t.references :association, foreign_key: true
    end
  end
end
