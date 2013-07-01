class Mailer < ActionMailer::Base
  default from: "sudhirsb2003@gmail.com"

  def welcome_email(user)
    @user = user
    mail(to: user.email, subject: "Welcome to Sudhir's Monsterporium!")
  end

  def order_confirmation(user, order)
    @user = user
    @order = order
    mail(to: user.email, subject: "Thanks for your purchase!")
  end
end
