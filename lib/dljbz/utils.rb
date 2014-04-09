module Dljbz

  module Utils

    API_URL              = 'http://dlj.bz/api/urlshortener/'

    private
    def modify_headers(item)
      Dljbz::Request.headers.merge!(item)
    end

    def post(url, params={})
      Dljbz::Request.post(url, params)
    end

    def get(url, params={})
      Dljbz::Request.get(url, params)
    end

    def exception(msg)
      Exception.new(msg)
    end

  end

end
