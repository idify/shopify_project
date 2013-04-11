class NotificationMailer < ActionMailer::Base
  default from: "from@example.com"
   default from: "myshop@gmail.com"

  def notify(user,sub,msg)
		@msg = msg
    mail(:to => user, :subject => sub)
  end

end
