class PagesController < ApplicationController
skip_before_action :authenticate_user!

  def home
  end

  def contact
    # <Niyati - create an enquiry object and instantiate it>
    @enquiry = Enquiry.new
  end

  def about
  end

  def privacy
  end
end
