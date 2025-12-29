# frozen_string_literal: true

module Brainzlab
  module Components
    class Input < Base
      def initialize(type: "text", error: false, **attrs)
        @type = type
        @error = error
        @attrs = attrs
      end

      def view_template
        input(
          type: @type,
          class: input_classes,
          **@attrs
        )
      end

      private

      def input_classes
        classes(
          "input",
          @error ? "input-error" : nil,
          @attrs[:class]
        )
      end
    end

    class Label < Base
      def initialize(for_input: nil, **attrs)
        @for_input = for_input
        @attrs = attrs
      end

      def view_template(&)
        label(
          for: @for_input,
          class: classes("label", @attrs[:class]),
          **@attrs.except(:class),
          &
        )
      end
    end

    class Select < Base
      def initialize(error: false, **attrs)
        @error = error
        @attrs = attrs
      end

      def view_template(&)
        select(
          class: select_classes,
          **@attrs,
          &
        )
      end

      private

      def select_classes
        classes(
          "select",
          @error ? "input-error" : nil,
          @attrs[:class]
        )
      end
    end

    class Textarea < Base
      def initialize(error: false, **attrs)
        @error = error
        @attrs = attrs
      end

      def view_template(&)
        textarea(
          class: textarea_classes,
          **@attrs,
          &
        )
      end

      private

      def textarea_classes
        classes(
          "textarea",
          @error ? "input-error" : nil,
          @attrs[:class]
        )
      end
    end
  end
end
