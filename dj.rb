# lib/delayed_reset_password.rb
class DelayedResetPassword
  attr_accessor :user
  attr_accessor :new_password

	def initialize(user, new_password)
	  self.user         = user
		self.new_password = new_password
	end

	def perform
    NotificationMailer.deliver_user_reset_password(@user, @new_password)
	end
end

