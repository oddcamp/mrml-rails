require 'action_mailer'
require 'action_view'

ActionMailer::Base.delivery_method = :test
ActionMailer::Base.prepend_view_path File.join(File.dirname(__FILE__), "templates")
ActionView::Template.register_template_handler :mjml, Mrml::Rails::Handler.new
Mime::Type.register_alias "text/html", :mjml

class MrmlTestMailer < ActionMailer::Base
  layout false

  default from: 'example@mailer.com'

  def normal_email(username)
    @username = username
    
    mail to: 'user@example.org', subject: 'Welcome!' do |format|
      format.mjml { render 'normal_email' }
    end
  end

  def partial_email(username)
    @username = username
    
    mail to: 'user@example.org', subject: 'Welcome!' do |format|
      format.mjml { render 'partial_email' }
    end
  end
end

class MrmlLayoutTestMailer < ActionMailer::Base
  layout 'mailer'

  default from: 'example@mailer.com'

  def normal_email(username)
    @username = username
    
    mail to: 'user@example.org', subject: 'Welcome!' do |format|
      format.mjml { render 'normal_email' }
    end
  end

  def partial_email(username)
    @username = username
    
    mail to: 'user@example.org', subject: 'Welcome!' do |format|
      format.mjml { render 'partial_email' }
    end
  end
end
