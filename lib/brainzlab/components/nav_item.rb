# frozen_string_literal: true

module Brainzlab
  module Components
    class NavItem < Base
      def initialize(href: '#', active: false, **attrs)
        @href = href
        @active = active
        @attrs = attrs
      end

      def view_template(&)
        a(
          href: @href,
          class: nav_item_classes,
          **@attrs,
          &
        )
      end

      private

      def nav_item_classes
        classes(
          'nav-item',
          @active ? 'active' : nil,
          @attrs[:class]
        )
      end
    end
  end
end
