class RenamePassswordDigestColumnToPasswordDigest < ActiveRecord::Migration
  def up
    rename_column :users, :passsword_digest, :password_digest
  end

  def down
    rename_column :users, :password_digest, :passsword_digest
  end
end
