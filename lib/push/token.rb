# encoding:utf-8
module Push
  module Token
    def self.secure_digest(*args)
      Digest::SHA1.hexdigest(args.flatten.join('--'))
    end

    ##
    # Example => Push::Token.make_token
    #            Push::Token.make_token("wxianfeng@wxianfeng.com")
    def self.make_token(*args)
      secure_digest(Time.now, (1..10).map{ rand.to_s },args.flatten.join)
    end

  end
end