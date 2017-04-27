class LogoUploader < ApplicationUploader

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def default_url
    ActionController::Base.helpers.asset_path(
      'default/' + [version_name, 'logo.png'].compact.join('_')
    )
  end

  version :thumb do
    process resize_to_fit: [256, 256]
  end

  def extension_whitelist
    %w(jpg jpeg gif png)
  end
end
