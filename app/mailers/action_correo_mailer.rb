class ActionCorreoMailer < ActionMailer::Base
  
  def follow_up_notification(user)
  	@user = user

  	mail(to: @user.email, subject: 'Te han seguido')
  end

end
