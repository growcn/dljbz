module Dljbz

  class Base
    
    # URL for QR Code
    #
    #   url = Dljbz.shorten('http://51qiangda.com')
    #   ur.qr_code
    #   => http://dlj.bz/51qd.qr
    #
    # Usage:
    #
    #   <img src="http://dlj.bz/51qd.qr" />
    #
    def qr_code
      "#{short_url}.qr"
    end

    # URL for analytics
    #
    #   url = Dljbz.shorten('http://51qiangda.com')
    #   ur.info
    #   => http://dlj.bz/51qd.info
    #
    def info
      "#{short_url}.info"
    end

  end

end
