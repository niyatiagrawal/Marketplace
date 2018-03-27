class SellerProfileLogoUploader < CarrierWave::Uploader::Base

# Niyati - removes most of the comments and add the below. The only comment left was extension_whitelist to allow files only of these types to be uploaded. The below 1 line is added by us
  include Cloudinary::CarrierWave

  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  def extension_whitelist
    %w(jpg jpeg gif png)
  end
end
