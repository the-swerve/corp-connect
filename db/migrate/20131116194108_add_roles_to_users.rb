class AddRolesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :recruiter, :boolean
    add_column :users, :volunteer, :boolean
  end
end
