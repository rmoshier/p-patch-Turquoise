class PostMailer < ActionMailer::Base
  # default from: "from@example.com"

  # make a method that sends a new mail to someone who signs up
  def email_name(user_id)
    # raise
    @user = User.find_by(uid: user_id)
    mail :subject => "Welcome to PeaPatch!",
    :to      => @user.email,
    :from    => "pea_patch@fakepeapatch.com"
  end

end
