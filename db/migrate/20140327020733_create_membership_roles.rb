class CreateMembershipRoles < ActiveRecord::Migration
  def change
    create_table :membership_roles do |t|
      t.references :membership, index: true
      t.references :instrument, index: true

      t.timestamps
    end
  end
end
