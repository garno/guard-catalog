require 'guard'
require 'guard/guard'
require 'guard/watcher'

module Guard
  class Catalog < Guard
    VERSION = '0.1.0'

    def initialize(watchers = [], options = {})
      options[:config] ||= File.expand_path('~/.catalog.yml')

      super([::Guard::Watcher.new(//)], options)

    end

    def start
      catalog
    end

    def run_on_additions(paths)
      catalog
    end

    def run_on_changes(paths)
      catalog
    end

  protected

    def catalog
      cmd = []
      cmd << 'catalog'
      cmd << "--path #{Dir.pwd}"
      cmd << "--config #{options[:config]}" if options[:config]

      `#{cmd.join(' ')}`
    end
  end
end
