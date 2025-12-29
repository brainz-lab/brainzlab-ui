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
        div(class: classes("empty-state", @attrs[:class]), **@attrs.except(:class)) do
          if @icon
            div(class: "empty-state-icon") { @icon }
          end

          h3(class: "empty-state-title") { @title }

          if @description
            p(class: "empty-state-description") { @description }
          end

          if block_given?
            div(class: "mt-4") { yield }
          end
        end
      end
    end
  end
end
