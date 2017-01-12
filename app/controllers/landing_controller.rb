require 'wikipedia'

class LandingController < ApplicationController
  def index
		date_randomized = rand(1..366)
		@date = date_randomized.days.ago.strftime("%B %-d")
		@time = Time.now.strftime("%H:%M")
		article = Wikipedia.find("#{@date}")
		@facts = article.summary
		@image = article.image_descriptionurls[0]
	end
end
