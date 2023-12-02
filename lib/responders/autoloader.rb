require "zeitwerk"

module Responders
  class Autoloader
    class Inflector < Zeitwerk::Inflector
      def camelize(basename, _abspath)
        map = { version: "VERSION" }
        map[basename.to_sym] || super
      end
    end

    class << self
      def setup
        loader = Zeitwerk::Loader.new
        loader.inflector = Inflector.new
        lib = File.dirname(__dir__)
        loader.push_dir(lib)
        loader.ignore("#{lib}/jets-responders.rb")
        loader.setup
      end
    end
  end
end
