class CreateSkillMaps < ActiveRecord::Migration
  def change
    create_table :skill_maps do |t|
      t.integer :skill_id
      t.integer :opportunity_id
      t.integer :volunteer_id

      t.timestamps
    end
  end
end
