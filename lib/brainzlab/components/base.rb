# frozen_string_literal: true

require "phlex"

module Brainzlab
  module Components
    class Base < Phlex::HTML
      include Phlex::Rails::Helpers::Routes if defined?(Phlex::Rails::Helpers::Routes)

      def classes(*args)
        args.flatten.compact.join(" ")
      end
    end
  end
end
