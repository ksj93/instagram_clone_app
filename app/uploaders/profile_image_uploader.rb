class ProfileImageUploader < CarrierWave::Uploader::Base
  storage :file
  def store_dir
    "uploads/profile_image_"
  end
end
