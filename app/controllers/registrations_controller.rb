# <Niyati - created this controller from terminal and copy the below code from devise github
# $ atom app/controllers/registrations_controller.rb
# https://github.com/plataformatec/devise/wiki/How-To:-Redirect-to-a-specific-page-on-successful-sign-up-%28registration%29

class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    if resource.user_type == 'seller'
      new_seller_profile_path
    end 
  end
end
