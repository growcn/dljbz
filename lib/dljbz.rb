require 'pry' if ENV['PRY']
require 'rest-client'
require 'dljbz/request'
require 'dljbz/v2/short'

module Dljbz
  class << self
    attr_accessor :api_key
  end
end
