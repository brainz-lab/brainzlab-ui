# frozen_string_literal: true

module Brainzlab
  module Components
    class Button < Base
      VARIANTS = {
        primary: 'btn-primary',
        secondary: 'btn-secondary',
        ghost: 'btn-ghost',
        danger: 'btn-danger'
      }.freeze

      SIZES = {
        sm: 'btn-sm',
        md: nil,
        lg: 'btn-lg'
      }.freeze

      def initialize(variant: :primary, size: :md, lift: false, disabled: false, type: 'button', **attrs)
        @variant = variant
        @size = size
        @lift = lift
        @disabled = disabled
        @type = type
        @attrs = attrs
      end

      def view_template(&)
        button(
          type: @type,
          class: button_classes,
          disabled: @disabled,
          **@attrs,
          &
        )
      end

      private

      def button_classes
        classes(
          VARIANTS[@variant],
          SIZES[@size],
          @lift ? 'btn-lift' : nil,
          @attrs[:class]
        )
      end
    end
  end
end
