if ENV['S3_ENABLED']
  S3DirectUpload.config do |c|
    c.access_key_id = ENV['AKIAIYF5FJM52LGQWDAA']
    c.secret_access_key = ENV['WrmJ3Ywkg4g0UNGt37MY5yhEv']
    c.bucket = ENV['dardania']
    c.region = ENV['US Standard']
  end

  # Used for debugging
  $s3_client = S3::Service.new(
    access_key_id: ENV['AKIAIYF5FJM52LGQWDAA'],
    secret_access_key: ENV['WrmJ3Ywkg4g0UNGt37MY5yhEv']
  )
end
