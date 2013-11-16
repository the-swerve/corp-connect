class SkillMap < ActiveRecord::Base
  attr_accessible :opportunity_id, :skill_id, :volunteer_id

	belongs_to :opportunity
	belongs_to :user, :foreign_key => :volunteer_id
	belongs_to :skill
end
