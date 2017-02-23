CarrierWave.configure do |config|
  if Rails.env.production?

    config.fog_credentials = {
      provider:              'AWS',
      aws_access_key_id:     ENV['AWS_ACCESS_KEY_ID'],

      aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],

      region:                ENV['ap-northeast-1']

    }
    config.fog_provider = 'fog'
    config.fog_directory = ENV['fullstack-liangxinzhong']

  else
    config.storage :file
  end
end
