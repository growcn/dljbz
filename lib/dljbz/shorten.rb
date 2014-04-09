module Dljbz

  class Shorten < Base

    include Dljbz::Utils

    attr_accessor :short_url, :long_url

    # Creates a new short URL, see Dljbz.shorten
    #
    def initialize(long_url)
      modify_headers('Content-Type' => 'application/json')
      options = {"long_url" => long_url}.to_json
      resp = post(API_URL, :body => options)
      if resp.code == 200 or resp.code == 201
        self.short_url  = resp['short_url']
        self.long_url   = resp['long_url']
      else
        raise exception(resp.parsed_response)
      end
    end

  end

end
