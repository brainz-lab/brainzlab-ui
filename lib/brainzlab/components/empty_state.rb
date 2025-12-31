# frozen_string_literal: true

module Brainzlab
  module Components
    class EmptyState < Base
      def initialize(title:, description: nil, icon: nil, **attrs)
        @title = title
        @description = description
        @icon = icon
        @attrs = attrs
      end

      def view_template(&)
        div(class: classes('empty-state', @attrs[:class]), **@attrs.except(:class)) do
          div(class: 'empty-state-icon') { @icon } if @icon

          h3(class: 'empty-state-title') { @title }

          p(class: 'empty-state-description') { @description } if @description

          div(class: 'mt-4', &) if block_given?
        end
      end
    end
  end
end
