# encoding utf-8

require 'sinatra'
require 'sinatra/flash'
require 'sass'
require 'haml'

# Require all in lib directory
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each {|file| require file }

class App < Sinatra::Application

  # Load config.yml into settings.config variable
  set :config, YAML.load_file("#{root}/config/config.yml")[settings.environment.to_s]

  set :environment, ENV["RACK_ENV"] || "development"
  set :haml, { :format => :html5 }

  ######################################################################
  # Configurations for different environments
  ######################################################################

  configure :staging do
    enable :logging
  end

  configure :development do
    enable :logging
  end

  ######################################################################

end

helpers do
  include Rack::Utils
  alias_method :h, :escape_html

  # More methods in /helpers/*
end

require_relative 'models/init'
require_relative 'helpers/init'

########################################################################
# Routes/Controllers
########################################################################

# ----------------------------------------------------------------------
# Main
# ----------------------------------------------------------------------

get '/' do
  "Hello"
end


# -----------------------------------------------------------------------
# Error handling
# -----------------------------------------------------------------------

not_found do
  logger.info "not_found: #{request.request_method} #{request.url}"
end

# All errors
error do
  "Error"
end
