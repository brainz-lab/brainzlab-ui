# frozen_string_literal: true

module Brainzlab
  module Components
    class Badge < Base
      VARIANTS = {
        primary: 'badge-primary',
        success: 'badge-success',
        error: 'badge-error',
        warning: 'badge-warning',
        info: 'badge-info',
        neutral: 'badge-neutral'
      }.freeze

      def initialize(variant: :neutral, **attrs)
        @variant = variant
        @attrs = attrs
      end

      def view_template(&)
        span(class: badge_classes, **@attrs, &)
      end

      private

      def badge_classes
        classes('badge', VARIANTS[@variant], @attrs[:class])
      end
    end
  end
end
