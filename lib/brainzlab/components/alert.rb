# frozen_string_literal: true

module Brainzlab
  module Components
    class Alert < Base
      TYPES = {
        success: 'alert-success',
        error: 'alert-error',
        warning: 'alert-warning',
        info: 'alert-info'
      }.freeze

      def initialize(type: :info, **attrs)
        @type = type
        @attrs = attrs
      end

      def view_template(&)
        div(class: alert_classes, role: 'alert', **@attrs, &)
      end

      private

      def alert_classes
        classes('alert', TYPES[@type], @attrs[:class])
      end
    end
  end
end
