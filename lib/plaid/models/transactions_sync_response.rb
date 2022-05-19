=begin
#The Plaid API

#The Plaid REST API. Please see https://plaid.com/docs/api for more details.

The version of the OpenAPI document: 2020-09-14_1.115.2

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.1

=end

require 'date'
require 'time'

module Plaid
  # TransactionsSyncResponse defines the response schema for `/transactions/sync`
  class TransactionsSyncResponse
    # Transactions that have been added to the item since `cursor` ordered by ascending last modified time.
    attr_accessor :added

    # Transactions that have been modified on the item since `cursor` ordered by ascending last modified time.
    attr_accessor :modified

    # Transactions that have been removed from the item since `cursor` ordered by ascending last modified time.
    attr_accessor :removed

    # Cursor used for fetching any future updates after the latest update provided in this response.
    attr_accessor :next_cursor

    # Represents if more than requested count of transaction updates exist. If true, the additional updates can be fetched by making an additional request with `cursor` set to `next_cursor`.
    attr_accessor :has_more

    # A unique identifier for the request, which can be used for troubleshooting. This identifier, like all Plaid identifiers, is case sensitive.
    attr_accessor :request_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'added' => :'added',
        :'modified' => :'modified',
        :'removed' => :'removed',
        :'next_cursor' => :'next_cursor',
        :'has_more' => :'has_more',
        :'request_id' => :'request_id'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'added' => :'Array<Transaction>',
        :'modified' => :'Array<Transaction>',
        :'removed' => :'Array<RemovedTransaction>',
        :'next_cursor' => :'String',
        :'has_more' => :'Boolean',
        :'request_id' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Plaid::TransactionsSyncResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Plaid::TransactionsSyncResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'added')
        if (value = attributes[:'added']).is_a?(Array)
          self.added = value
        end
      end

      if attributes.key?(:'modified')
        if (value = attributes[:'modified']).is_a?(Array)
          self.modified = value
        end
      end

      if attributes.key?(:'removed')
        if (value = attributes[:'removed']).is_a?(Array)
          self.removed = value
        end
      end

      if attributes.key?(:'next_cursor')
        self.next_cursor = attributes[:'next_cursor']
      end

      if attributes.key?(:'has_more')
        self.has_more = attributes[:'has_more']
      end

      if attributes.key?(:'request_id')
        self.request_id = attributes[:'request_id']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @added.nil?
        invalid_properties.push('invalid value for "added", added cannot be nil.')
      end

      if @modified.nil?
        invalid_properties.push('invalid value for "modified", modified cannot be nil.')
      end

      if @removed.nil?
        invalid_properties.push('invalid value for "removed", removed cannot be nil.')
      end

      if @next_cursor.nil?
        invalid_properties.push('invalid value for "next_cursor", next_cursor cannot be nil.')
      end

      if @has_more.nil?
        invalid_properties.push('invalid value for "has_more", has_more cannot be nil.')
      end

      if @request_id.nil?
        invalid_properties.push('invalid value for "request_id", request_id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @added.nil?
      return false if @modified.nil?
      return false if @removed.nil?
      return false if @next_cursor.nil?
      return false if @has_more.nil?
      return false if @request_id.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          added == o.added &&
          modified == o.modified &&
          removed == o.removed &&
          next_cursor == o.next_cursor &&
          has_more == o.has_more &&
          request_id == o.request_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [added, modified, removed, next_cursor, has_more, request_id].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = Plaid.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
