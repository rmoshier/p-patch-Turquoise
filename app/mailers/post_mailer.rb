class PostMailer < ActionMailer::Base
  # default from: "from@example.com"

  # make a method that sends a new mail to someone who signs up
  def email_name
    mail :subject => "Mandrill rides the Rails!",
    :to      => "rmoshier@gmail.com",
    :from    => "you@yourdomain.com"
  end

end
