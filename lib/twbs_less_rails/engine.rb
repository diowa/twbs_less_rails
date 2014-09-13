require "less-rails"
require "therubyracer"

module TwbsLessRails
  class Engine < ::Rails::Engine
    initializer "TwbsLessRails precompile hook", group: :all do |app|
      app.config.assets.precompile += %w(respond.js)
    end
  end
end
