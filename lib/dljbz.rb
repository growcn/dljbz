require 'httparty'
require 'json'

require 'dljbz/base'
require 'dljbz/utils'
require 'dljbz/request'
require 'dljbz/shorten'

module Dljbz
  extend self

  # Creates a new short URL
  #
  #   url = Dljbz.shorten('http://51qiangda.com')
  #   url.short_url
  #   => "http://dlj.bz/51qd"
  #
  def shorten(url=nil)
    raise ArgumentError.new("URL to shorten is required") if url.nil? || url.strip.empty?
    Dljbz::Shorten.new(url)
  end
    


end
