module Dljbz
  class Request
    API_URL = 'http://dlj.bz/api'

    class << self
      def post(api_path, params = {}, headers = {})
        begin
          JSON.parse(
            RestClient.post(parse_path(api_path), params, app_headers.merge(headers))
          )
        rescue RestClient::ExceptionWithResponse => err
          JSON.parse(err.response.body)
        rescue => e
          raise e.inspect
        end
      end

      def app_headers
        {}
      end

      def parse_path(path)
        host = Dljbz.endpoint || API_URL

        "#{host}#{path}"
      end
    end
  end
end
