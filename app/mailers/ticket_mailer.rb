class TicketMailer < ActionMailer::Base
  default from: "ben@tailwindcreative.com"

  def new_ticket(ticket)
  	@ticket = ticket
  	plate = @ticket.plate
  	plate.users.each do |user|
  		@user = User.where('id = ?', user['id']).first
  		mail(:to => @user.email, :subject => "New Ticket") 
  	end
	
  end

end
