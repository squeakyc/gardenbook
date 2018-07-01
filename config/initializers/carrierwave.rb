CarrierWave.configure do |config|

  if Rails.env.production?
    config.fog_provider = 'fog/aws'
    config.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: ENV['AWS_ACCESS_KEY_ID'],
      aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
      region: 'us-east-2',
      host: 's3.amazonaws.com',
      endpoint: 'https://s3.us-east-2.amazonaws.com'
    }
    config.fog_directory = 'gardenbookprod2'
  end
end
