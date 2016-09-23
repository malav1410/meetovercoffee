class Recommendation < ActiveRecord::Base
	after_create :send_email_to_recommender

	def send_email_to_recommender 
		# Tell the UserMailer to send a welcome email after save
        #UserMailer.welcome_email(self).deliver_later
	end
end
