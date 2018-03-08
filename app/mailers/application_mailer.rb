class ApplicationMailer < ActionMailer::Base
  # <Niyati - change the from email id. they are called as transactional emails>
  default from: 'Nymeria <info@nymeria.com>'
  layout 'mailer'
end
