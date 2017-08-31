module FileHelper
  extend SpecHelper

  type :factory

  def file_upload(*path, type)
    Rack::Test::UploadedFile.new(
      Rails.root.join(*path), type
    )
  end

  def spec_file_upload(*path, type)
    path.prepend 'spec', 'support', 'data'
    file_upload *path, type
  end
end
