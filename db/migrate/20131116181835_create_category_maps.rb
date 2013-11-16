class CreateCategoryMaps < ActiveRecord::Migration
  def change
    create_table :category_maps do |t|
      t.integer :category_id
      t.integer :opportunity_id

      t.timestamps
    end
  end
end
