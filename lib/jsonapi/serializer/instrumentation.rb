require 'active_support/notifications'

module JSONAPI
  module Serializer
    # Support for instrumentation
    module Instrumentation
      # Patched main object serialization method to use instrumentation
      #
      # @return [Hash]
      def serializable_hash
        ActiveSupport::Notifications.instrument(
          ::JSONAPI::Serializer::SERIALIZABLE_HASH_NOTIFICATION,
          { name: self.class.name, serializer: self.class }
        ) do
          super
        end
      end
    end
  end
end
