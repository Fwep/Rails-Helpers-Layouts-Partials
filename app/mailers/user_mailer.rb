class UserMailer < ApplicationMailer
  default from: 'everybody@appacademy.io'

  def welcome_email(user)
    @user = user
    @url = 'https://localhost:3000/sessions/new'
    mail(toL: @user.email, subject: 'Welcome to 99 Cats!')
  end
end
