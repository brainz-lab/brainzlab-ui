# frozen_string_literal: true

module Brainzlab
  module Components
    class Modal < Base
      SIZES = {
        sm: "modal-sm",
        md: "modal-md",
        lg: "modal-lg",
        xl: "modal-xl"
      }.freeze

      def initialize(size: :md, **attrs)
        @size = size
        @attrs = attrs
      end

      def view_template(&)
        div(class: "modal-overlay", data: { modal_target: "overlay" })
        div(class: modal_classes, role: "dialog", **@attrs, &)
      end

      private

      def modal_classes
        classes("modal", SIZES[@size], @attrs[:class])
      end
    end

    class ModalHeader < Base
      def initialize(**attrs)
        @attrs = attrs
      end

      def view_template(&)
        div(class: classes("modal-header", @attrs[:class]), **@attrs.except(:class), &)
      end
    end

    class ModalBody < Base
      def initialize(**attrs)
        @attrs = attrs
      end

      def view_template(&)
        div(class: classes("modal-body", @attrs[:class]), **@attrs.except(:class), &)
      end
    end

    class ModalFooter < Base
      def initialize(**attrs)
        @attrs = attrs
      end

      def view_template(&)
        div(class: classes("modal-footer", @attrs[:class]), **@attrs.except(:class), &)
      end
    end
  end
end
