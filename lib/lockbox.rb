require "lockbox/version"

module Lockbox
  
  def self.configure 
    yield Configuration
  end

  module Configuration
    class << self
      attr_writer :path
    end

    def self.path
      path ||= ENV.fetch("LOCKBOX_PATH") do
        File.expand_path("~/.R/lockbox-rb/")
      end
    end
  end

end

