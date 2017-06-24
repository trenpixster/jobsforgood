class RemoveDeviseFromSeekers < ActiveRecord::Migration[5.1]
  def change
    remove_column :seekers, :email
    remove_column :seekers, :encrypted_password
    remove_column :seekers, :reset_password_token
    remove_column :seekers, :reset_password_sent_at
    remove_column :seekers, :remember_created_at
    remove_column :seekers, :sign_in_count
    remove_column :seekers, :current_sign_in_at
    remove_column :seekers, :last_sign_in_at
    remove_column :seekers, :current_sign_in_ip
    remove_column :seekers, :last_sign_in_ip
  end
end
