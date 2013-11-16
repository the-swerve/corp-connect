class CreateInterestMaps < ActiveRecord::Migration
  def change
    create_table :interest_maps do |t|
      t.integer :interest_id
      t.integer :opportunity_id
      t.integer :volunteer_id

      t.timestamps
    end
  end
end
