require 'carrierwave/orm/activerecord'

CarrierWave.configure do |config|
  config.storage = :fog
  config.fog_credentials = {
      :provider               => 'AWS',
      :aws_access_key_id      => 'AKIAIGLUYPBSI4Y3FCCA',
      :aws_secret_access_key  => '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',
      :region                 => 'sa-east-1'
  }
  config.fog_directory  = 'bodapipecami'
end