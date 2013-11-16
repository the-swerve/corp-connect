class CreateOpportunities < ActiveRecord::Migration
  def change
    create_table :opportunities do |t|
      t.string :name
      t.text :body
      t.string :country
      t.string :area
      t.float :latitude
      t.float :longitude
      t.datetime :start_date
      t.datetime :end_date
      t.integer :applicants
      t.string :status
      t.integer :recruiter_id

      t.timestamps
    end
  end
end
