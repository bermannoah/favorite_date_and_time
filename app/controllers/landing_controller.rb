class LandingController < ApplicationController
  def index
		date_randomized = rand(1..100000)
		@date = date_randomized.days.ago.strftime("%b %-d %Y")		
  end
end
