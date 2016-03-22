if ENV['S3_ENABLED']
  S3DirectUpload.config do |c|
    c.access_key_id = ENV['AKIAJNLDSDVYTTRM2WBA']
    c.secret_access_key = ENV['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']
    c.bucket = ENV['dardania']
    c.region = ENV['US Standard']
  end

  # Used for debugging
  $s3_client = S3::Service.new(
    access_key_id: ENV['AKIAJNLDSDVYTTRM2WBA'],
    secret_access_key: ENV['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']
  )
end
