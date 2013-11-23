# encoding:utf-8
# http://guides.rubyonrails.org/action_mailer_basics.html
class UserMailer < ActionMailer::Base
  default :from => "znzwmz@gmail.com"

  @queue = :user_mailer

  ##
  # VVERBOSE=1 QUEUE=* rake resque:work
  def self.perform(user_id, branch)
    user = User.find(user_id)
    case branch
    when /get_api/ then get_api_notification(user).deliver
    end
  end

  def get_api_notification(user)
    site = Push::Config::SITE
    app = user.app
    subject = '[Pushincloud] API Key 申请成功'
    @app_id = app.id
    @key = app.key
    @url = "http://#{site}"
    mail(:to => user.email, :subject => subject )
    render :layout=>false
  end

end
