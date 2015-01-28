require 'sprockets'
require 'sprockets/engines'

require "minispade-rails/config"
require 'minispade-rails/directive_processor'
require 'minispade-rails/compiler'
require 'minispade-rails/railtie' if defined?(Rails)
require "minispade-rails/version"

module MinispadeRails
  Sprockets.register_engine '.spade', MinispadeRails::Compiler
end
