class HomeController < ApplicationController
  def show
		if current_user
			redirect_to opportunities_url
		end
  end
end
