class ExampleMailer < ActionMailer::Base
  # default from: "from@example.com"

  def sample_email(user)

    @user = user

    # Uncomment the following when using SMTP for sending out mails

    mail(to: @user.email, subject: 'Sample Email', from: 'test@example.com')	

    # End 
    
    # Uncomment the following when using mailgun-ruby

    #mg_client = Mailgun::Client.new ENV['api_key']

#    message_params = {:from    => 'redmine@kinetiksoft.com',
#                      :to      => @user.email,
#  	                  :subject => 'Sample Mail using Mailgun API',
#  	                  :text    => 'Mail is sent using Mailgun API via mailgun-ruby via active job-delay-later'}
#
#  	mg_client.send_message ENV['domain'], message_params
#
    # End 
  end
end
