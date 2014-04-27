require "infrataster/version"
require "infrataster/resources"
require "infrataster/server"
require "infrataster/helpers"
require "infrataster/browsermob_proxy"
require "infrataster/contexts"
require 'logger'

module Infrataster
  Logger = ::Logger.new($stdout)
  if ENV['INFRATASTER_LOG']
    Logger.level = ::Logger.const_get(ENV['INFRATASTER_LOG'].upcase)
  else
    Logger.level = ::Logger::ERROR
  end
end
