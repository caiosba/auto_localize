require 'auto_localize'
require 'rails'

module AutoLocalize
  TASKS = Dir[File.join(File.dirname(__FILE__), 'tasks/*.rake')]

  class Railtie < Rails::Railtie
    railtie_name :auto_localize
    rake_tasks do
      AutoLocalize::TASKS.each { |f| load f }
    end
  end
end
