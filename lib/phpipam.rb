# frozen_string_literal: true
require_relative 'phpipam/version'
require 'rubygems'
require 'httparty'
require 'ipaddress'
require_relative 'phpipam/auth'
require_relative 'phpipam/subnets'
require_relative 'phpipam/sections'
require_relative 'phpipam/vlans'
require_relative 'phpipam/vrfs'

module Phpipam
  class Api
    include HTTParty
    include Auth
    include Subnets
    include Sections
    include Vlans
    include Vrfs

    def initialize(app, url)
      @app = app
      @url = url
    end

    def app_url
      @url + '/' + @app
    end
  end
end
