# frozen_string_literal: true

module Brainzlab
  module Components
    class StatCard < Base
      def initialize(label:, value:, change: nil, change_type: nil, **attrs)
        @label = label
        @value = value
        @change = change
        @change_type = change_type
        @attrs = attrs
      end

      def view_template
        div(class: classes('stat-card', @attrs[:class]), **@attrs.except(:class)) do
          div(class: 'stat-label') { @label }
          div(class: 'stat-value') { @value }
          span(class: change_classes) { @change } if @change
        end
      end

      private

      def change_classes
        classes(
          'stat-change',
          @change_type == :positive ? 'stat-change-positive' : nil,
          @change_type == :negative ? 'stat-change-negative' : nil
        )
      end
    end
  end
end
