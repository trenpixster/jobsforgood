class RenameAssociationToInstitution < ActiveRecord::Migration[5.1]
  def change
    rename_table :associations, :institutions
    rename_column :seekers, :association_id, :institution_id
  end
end
