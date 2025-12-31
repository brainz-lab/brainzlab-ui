# frozen_string_literal: true

require_relative 'ui/version'

module Brainzlab
  module UI
    class Error < StandardError; end

    class << self
      def root
        @root ||= Pathname.new(File.expand_path('../..', __dir__))
      end
    end
  end

  # Shorthand for components
  module Components
    autoload :Base, 'brainzlab/components/base'
    autoload :Button, 'brainzlab/components/button'
    autoload :Card, 'brainzlab/components/card'
    autoload :Badge, 'brainzlab/components/badge'
    autoload :Input, 'brainzlab/components/input'
    autoload :Alert, 'brainzlab/components/alert'
    autoload :Avatar, 'brainzlab/components/avatar'
    autoload :Table, 'brainzlab/components/table'
    autoload :NavItem, 'brainzlab/components/nav_item'
    autoload :StatCard, 'brainzlab/components/stat_card'
    autoload :EmptyState, 'brainzlab/components/empty_state'
    autoload :Modal, 'brainzlab/components/modal'
  end
end

require_relative 'ui/engine' if defined?(Rails::Engine)
