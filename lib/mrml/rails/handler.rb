require 'action_view'
require 'action_view/template'
require 'rails/version'
require 'mrml'

module Mrml
  module Rails
    class Handler
      def template_handler
        @template_handler ||= ActionView::Template.registered_template_handler(:erb)
      end

      # Optional second source parameter to make it work with Rails >= 6:
      # Beginning with Rails 6 template handlers get the source of the template as the second
      # parameter.
      def call(template, source = nil)
        compiled_source = if ::Rails::VERSION::MAJOR >= 6
            template_handler.call(template, source)
        else
            template_handler.call(template)
        end

        if compiled_source =~ /<mjml.*?>/i
          "MRML.to_html(begin;#{compiled_source};end).html_safe"
        else
          compiled_source
        end
      end
    end
  end
end
