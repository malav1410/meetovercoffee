class HomeController < ApplicationController
	skip_before_action :verify_authenticity_token
	def index
		
	end

	def create_recommendation		
		redirect_to "/", alert: "Successfully submited"
	end
end
