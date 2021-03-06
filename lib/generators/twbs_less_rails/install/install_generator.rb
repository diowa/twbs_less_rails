module TwbsLessRails
  module Generators
    class InstallGenerator < ::Rails::Generators::Base

      source_root File.expand_path(File.join(File.dirname(__FILE__), 'templates'))
      desc "This generator installs Bootstrap to Asset Pipeline"

      def copy_assets
        js_manifest = 'app/assets/javascripts/application.js'
        if File.exist?(File.join(destination_root, js_manifest))
          insert_into_file js_manifest, "//= require twbs/bootstrap\n", after: "jquery_ujs\n"
        else
          copy_file 'application.js', js_manifest
        end

        css_manifest = 'app/assets/stylesheets/application.css'
        if File.exist?(File.join(destination_root, css_manifest))
          insert_into_file css_manifest, " *= stub twbs-variables\n *= require twbs\n", before: " *= require_tree .\n"
        else
          copy_file 'application.css', css_manifest
        end
      end

      def copy_bootstrap
        copy_file 'twbs.js.coffee', 'app/assets/javascripts/twbs.js.coffee'
        copy_file 'twbs-variables.css.less', 'app/assets/stylesheets/twbs-variables.css.less'
        copy_file 'twbs.css.less', 'app/assets/stylesheets/twbs.css.less'
      end
    end
  end
end
