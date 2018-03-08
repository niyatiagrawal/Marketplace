class EnquiryMailer < ApplicationMailer
# <Niyati - you can define from here as well if you want to customise the name for only enquiries

# <Niyati - locales is when you send emails internationally
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.enquiry_mailer.response.subject
  #

  # <Niyati - we want the enquiry id and info of the enquiry to know whom to responsd>
  def response(enquiry_id)
    @enquiry = Enquiry.find(enquiry_id)
    # <Niuyati - you can add ther persons name so to make sure it goes into their mailbox and not spam
    mail to: @enquiry.email, subject: "Hi " + @enquiry.name + ", your enquiry has been received :)"
  end

  #

  def received(enquiry_id)
    @enquiry = Enquiry.find(enquiry_id)
    mail to: "niyati2307@gmail.com", subject: "Hey, an enquiry has been received!"
  end
end
