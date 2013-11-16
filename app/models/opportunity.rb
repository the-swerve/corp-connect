class Opportunity < ActiveRecord::Base
  attr_accessible :applicants, :area, :body, :country, :end_date, :latitude, :longitude, :name, :recruiter_id, :start_date, :status

	has_many :skill_maps
	has_many :interest_maps

	def skill_names
		self.
		self.skill_maps.joins(:skill).pluck('skill.name').to_sentence
	end
end
