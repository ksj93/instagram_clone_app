class ImageUploader < CarrierWave::Uploader::Base

  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
  # version :thumb do
  #   process :resize_to_fill => [width, height, gravity = ::Magick::CenterGravity]
  # end
  def auto
    manipulate! do|image|
      image.auto_orient
    end
  end
  # 
  # process :auto
end
