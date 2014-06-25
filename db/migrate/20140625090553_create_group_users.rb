class CreateGroupUsers < ActiveRecord::Migration
  def change
    create_table :group_users do |t|
      t.belongs_to :group
      t.belongs_to :user

      t.timestamps
    end

    add_index :group_users, [:group_id, :user_id], unique: true
  end
end
