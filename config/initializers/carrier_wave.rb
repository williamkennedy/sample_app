if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Configuration for Amazon S3
      :provider              => 'AWS',
      :aws_access_key_id     => ENV['AKIAIFN7L7OUDZ3ZLKRA'],
      :aws_secret_access_key => ENV['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']
    }
    config.fog_directory     =  ENV['williamsampleapp']
  end
end