module Dljbz
  module V2
    class Short
      # attr_accessor :params
      API_SHORT_V2_URL = '/v2/short'
      # Dljbz.api_key = 'c9bc59f083b691828006391ff92e0fe5'
      # Dljbz::V2::Short.request('http://www.sina.com.cn')
      # def initialize(long_url, opts = {})
      # end

      def self.request(long_url, opts = {})
        params = { url: long_url, api_key: Dljbz.api_key.to_s }.merge(opts)
        Dljbz::Request.post(API_SHORT_V2_URL, params)
      end
    end
  end
end
