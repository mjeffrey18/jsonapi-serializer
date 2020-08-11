require 'fast_jsonapi'

module JSONAPI
  module Serializer
    SERIALIZABLE_HASH_NOTIFICATION = \
      'render.jsonapi-serializer.serializable_hash'.freeze

    # TODO: Move and cleanup the old implementation...
    def self.included(base)
      base.class_eval do
        include FastJsonapi::ObjectSerializer
      end
    end
  end
end
