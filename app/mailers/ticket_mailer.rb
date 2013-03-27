class TicketMailer < ActionMailer::Base
  default from: "bartlingalex@gmail.com"

  def new_ticket(ticket)
  	@ticket = ticket
  	plate = @ticket.plate
  	plate.users.each do |user|
  		@user = User.where('id = ?', user['id']).first
  		mail(:to => @user.email, :subject => "New Ticket") 
  	end
	
  end

  def ticket_increase(ticket)
    @ticket = ticket
    plate = @ticket.plate
    plate.users.each do |user|
      @user = User.where('id = ?', user['id']).first
      mail(:to => @user.email, :subject => "Your ticket is about to increase in price.")
    end
  end
end
