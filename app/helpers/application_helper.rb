module ApplicationHelper
	def resource_name
		:user
	end

	def resource
		@resource ||= User.new
	end

  def simple_date date_object
    date_object.strftime("%m/%d/%Y")
  end

end
