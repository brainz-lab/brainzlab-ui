# frozen_string_literal: true

module Brainzlab
  module Components
    class Table < Base
      def initialize(**attrs)
        @attrs = attrs
      end

      def view_template(&)
        div(class: "table-wrapper") do
          table(class: classes("table", @attrs[:class]), **@attrs.except(:class), &)
        end
      end
    end

    class TableHeader < Base
      def initialize(**attrs)
        @attrs = attrs
      end

      def view_template(&)
        thead(**@attrs, &)
      end
    end

    class TableBody < Base
      def initialize(**attrs)
        @attrs = attrs
      end

      def view_template(&)
        tbody(**@attrs, &)
      end
    end

    class TableRow < Base
      def initialize(**attrs)
        @attrs = attrs
      end

      def view_template(&)
        tr(**@attrs, &)
      end
    end

    class TableHead < Base
      def initialize(**attrs)
        @attrs = attrs
      end

      def view_template(&)
        th(**@attrs, &)
      end
    end

    class TableCell < Base
      def initialize(**attrs)
        @attrs = attrs
      end

      def view_template(&)
        td(**@attrs, &)
      end
    end
  end
end
