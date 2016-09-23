class Subscriber < ActiveRecord::Base
	after_create :send_email_to_subscriber

	def send_email_to_subscriber 
		# Tell the UserMailer to send a welcome email after save
        #UserMailer.subscriber_email(self).deliver_later
	end
end
