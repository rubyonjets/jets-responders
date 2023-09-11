$:.unshift(File.expand_path("../", __FILE__))

require "responders/autoloader"
Responders::Autoloader.setup

require "memoist"
require "rainbow/ext/string"

module Responders
  class Error < StandardError; end
end

ActiveSupport.on_load(:jets_controller) do
  include Jets::Controller::RespondWith
end

require "responders/engine"
