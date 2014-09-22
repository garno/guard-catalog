require 'guard'
require 'guard/guard'

module Guard
  class Catalog < Guard
    VERSION = '0.1.0'

    def initialize(watchers = [], options = {})
      options[:config] ||= File.expand_path('~/.catalog')

      super([::Guard::Watcher.new(//)], options)

    end

    def start
      catalog
    end

    def run_on_additions(paths)
      catalog
    end

  protected

    def catalog
      cmd = []
      cmd << 'catalog'
      cmd << "--path #{Dir.pwd}"
      cmd << "--config #{options[:config]}" if options[:config]

      UI.info cmd.join(' ')
    end
  end
end
