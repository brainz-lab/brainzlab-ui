# frozen_string_literal: true

module Brainzlab
  module Components
    class Avatar < Base
      SIZES = {
        sm: 'avatar-sm',
        md: 'avatar-md',
        lg: 'avatar-lg',
        xl: 'avatar-xl'
      }.freeze

      VARIANTS = {
        primary: 'avatar-primary',
        neutral: 'avatar-neutral'
      }.freeze

      def initialize(name: nil, src: nil, size: :md, variant: :primary, **attrs)
        @name = name
        @src = src
        @size = size
        @variant = variant
        @attrs = attrs
      end

      def view_template
        if @src
          img(
            src: @src,
            alt: @name || 'Avatar',
            class: avatar_classes
          )
        else
          div(class: avatar_classes) do
            initials
          end
        end
      end

      private

      def avatar_classes
        classes('avatar', SIZES[@size], VARIANTS[@variant], @attrs[:class])
      end

      def initials
        return '' unless @name

        @name.split.map { |part| part[0] }.take(2).join.upcase
      end
    end
  end
end
