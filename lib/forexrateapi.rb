# frozen_string_literal: true

require 'faraday'
require 'faraday_middleware'
require 'json'
require 'logger'

require_relative 'forexrateapi/version'
require_relative 'forexrateapi/logger'

require_relative 'forexrateapi/errors/fault'

require_relative 'forexrateapi/raise_error'
require_relative 'forexrateapi/connection'
require_relative 'forexrateapi/request'
require_relative 'forexrateapi/config'
require_relative 'forexrateapi/errors'
require_relative 'forexrateapi/endpoints'
require_relative 'forexrateapi/client'
