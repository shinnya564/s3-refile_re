
require "refile/s3"

  aws = {
    access_key_id: ENV['ACCESS_KEY'], # アクセスキーID
    secret_access_key: ENV['SECRET_KEY'], # シークレットアクセスキー
    region: 'ap-northeast-1', # リージョン
    bucket: 'test111111222222', # バケット名
  }
  Refile.cache = Refile::S3.new(prefix: 'cache', **aws)
  Refile.store = Refile::S3.new(prefix: 'store', **aws)
