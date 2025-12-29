# frozen_string_literal: true

module Brainzlab
  module UI
    class Engine < ::Rails::Engine
      isolate_namespace Brainzlab::UI

      initializer "brainzlab_ui.assets" do |app|
        # Add stylesheets to the asset pipeline
        app.config.assets.paths << root.join("app/assets/stylesheets")
      end

      initializer "brainzlab_ui.phlex" do
        # Ensure Phlex components are available
        ActiveSupport.on_load(:action_view) do
          include Phlex::Rails::HelperMacros if defined?(Phlex::Rails::HelperMacros)
        end
      end

      config.to_prepare do
        # Eager load components in development
        Dir.glob(Brainzlab::UI.root.join("lib/brainzlab/components/*.rb")).each do |file|
          require file
        end
      end
    end
  end
end
