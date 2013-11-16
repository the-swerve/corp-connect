class Opportunity < ActiveRecord::Base
  attr_accessible :applicants, :area, :body, :country, :end_date, :latitude, :longitude, :name, :recruiter_id, :start_date, :status
end
