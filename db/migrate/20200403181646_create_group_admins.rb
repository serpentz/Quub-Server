class CreateGroupAdmins < ActiveRecord::Migration[6.0]
  def change
    create_table :group_admins do |t|
      t.references :group, null: false, foreign_key: true
      t.integer :admin_id, foreign_key: true


      t.timestamps
    end
  end
end
