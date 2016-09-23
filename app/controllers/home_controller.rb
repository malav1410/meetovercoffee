class HomeController < ApplicationController
	skip_before_action :verify_authenticity_token
	def index
		
	end

	def create_recommendation

		recommendation = Recommendation.new
		recommendation.user_link = params[:recommendation]["link"]
		recommendation.email = params[:recommendation]["email"]
		recommendation.cafe_name = params[:recommendation]["cafe_name"]
		recommendation.city = params[:recommendation]["city"]
		recommendation.cafe_link = params[:recommendation]["cafe_link"]
		recommendation.wifi_password = params[:recommendation]["wifi_password"]
		recommendation.note = params[:recommendation]["note"]

		recommendation.save!		
        
		redirect_to "/", alert: "Successfully submited"
	end

	def add_subscription

		subscriber = Subscriber.new
		subscriber.email = params[:subscriber]["email"]

		subscriber.save!
		redirect_to "/", alert: "Successfully subscribed"
	end
end
