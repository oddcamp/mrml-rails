require 'rails'

module Mrml
  module Rails
    class Railtie < ::Rails::Railtie
      initializer 'mrml-rails.register_template_handler' do
        ActionView::Template.register_template_handler :mjml, Mrml::Rails::Handler.new
        Mime::Type.register_alias 'text/html', :mjml
      end
    end
  end
end
