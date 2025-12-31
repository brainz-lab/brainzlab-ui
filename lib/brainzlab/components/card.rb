# frozen_string_literal: true

module Brainzlab
  module Components
    class Card < Base
      def initialize(interactive: false, lift: false, **attrs)
        @interactive = interactive
        @lift = lift
        @attrs = attrs
      end

      def view_template(&)
        div(class: card_classes, **@attrs, &)
      end

      private

      def card_classes
        classes(
          'card',
          @interactive ? 'card-interactive' : nil,
          @lift ? 'card-lift' : nil,
          @attrs[:class]
        )
      end
    end

    class CardHeader < Base
      def initialize(**attrs)
        @attrs = attrs
      end

      def view_template(&)
        div(class: classes('card-header', @attrs[:class]), **@attrs.except(:class), &)
      end
    end

    class CardBody < Base
      def initialize(**attrs)
        @attrs = attrs
      end

      def view_template(&)
        div(class: classes('card-body', @attrs[:class]), **@attrs.except(:class), &)
      end
    end

    class CardFooter < Base
      def initialize(**attrs)
        @attrs = attrs
      end

      def view_template(&)
        div(class: classes('card-footer', @attrs[:class]), **@attrs.except(:class), &)
      end
    end
  end
end
