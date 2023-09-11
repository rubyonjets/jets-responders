$stdout.sync = true unless ENV["RESPONDERS_STDOUT_SYNC"] == "0"

$:.unshift(File.expand_path("../", __FILE__))

require "responders/autoloader"
Responders::Autoloader.setup

require "memoist"
require "rainbow/ext/string"

module Responders
  class Error < StandardError; end
end
