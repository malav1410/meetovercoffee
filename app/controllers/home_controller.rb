class HomeController < ApplicationController
	skip_before_action :verify_authenticity_token
	def index
		
	end

	def create_recommendation
		puts params[:recommendation]["link"]

		# Tell the UserMailer to send a welcome email after save
        UserMailer.welcome_email(@user).deliver_later
        
		redirect_to "/", alert: "Successfully submited"
	end

	def add_subscription
		redirect_to "/", alert: "Successfully subscribed"
	end
end
