# encoding:utf-8
module Push
  module Config
    SITE = Rails.env.development? ? "localhost:3000" : "www.pushincloud.com"
  end
end