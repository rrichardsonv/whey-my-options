class ChangeUsersColumnsForFacebook < ActiveRecord::Migration[5.0]
  def change
    remove_column(:users,:password_digest,:string)
    add_column(:users,:facebook_uuid,:string)
    add_index(:users,:facebook_uuid)
  end
end
