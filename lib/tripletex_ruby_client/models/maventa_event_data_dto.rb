=begin
#Tripletex API

OpenAPI spec version: 2.69.5

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.24

=end

require 'date'

module TripletexRubyClient
  class MaventaEventDataDTO
    attr_accessor :invoice_id

    attr_accessor :invoice_number

    attr_accessor :destination

    attr_accessor :recipient_name

    attr_accessor :recipient_bid

    attr_accessor :network

    attr_accessor :id

    attr_accessor :profiles

    attr_accessor :error_message

    attr_accessor :recipient_eia

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'invoice_id' => :'invoice_id',
        :'invoice_number' => :'invoice_number',
        :'destination' => :'destination',
        :'recipient_name' => :'recipient_name',
        :'recipient_bid' => :'recipient_bid',
        :'network' => :'network',
        :'id' => :'id',
        :'profiles' => :'profiles',
        :'error_message' => :'error_message',
        :'recipient_eia' => :'recipient_eia'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'invoice_id' => :'String',
        :'invoice_number' => :'String',
        :'destination' => :'String',
        :'recipient_name' => :'String',
        :'recipient_bid' => :'String',
        :'network' => :'String',
        :'id' => :'String',
        :'profiles' => :'Array<String>',
        :'error_message' => :'String',
        :'recipient_eia' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'invoice_id')
        self.invoice_id = attributes[:'invoice_id']
      end

      if attributes.has_key?(:'invoice_number')
        self.invoice_number = attributes[:'invoice_number']
      end

      if attributes.has_key?(:'destination')
        self.destination = attributes[:'destination']
      end

      if attributes.has_key?(:'recipient_name')
        self.recipient_name = attributes[:'recipient_name']
      end

      if attributes.has_key?(:'recipient_bid')
        self.recipient_bid = attributes[:'recipient_bid']
      end

      if attributes.has_key?(:'network')
        self.network = attributes[:'network']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'profiles')
        if (value = attributes[:'profiles']).is_a?(Array)
          self.profiles = value
        end
      end

      if attributes.has_key?(:'error_message')
        self.error_message = attributes[:'error_message']
      end

      if attributes.has_key?(:'recipient_eia')
        self.recipient_eia = attributes[:'recipient_eia']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @invoice_id.nil?
        invalid_properties.push('invalid value for "invoice_id", invoice_id cannot be nil.')
      end

      if @invoice_number.nil?
        invalid_properties.push('invalid value for "invoice_number", invoice_number cannot be nil.')
      end

      if @destination.nil?
        invalid_properties.push('invalid value for "destination", destination cannot be nil.')
      end

      if @recipient_name.nil?
        invalid_properties.push('invalid value for "recipient_name", recipient_name cannot be nil.')
      end

      if @recipient_bid.nil?
        invalid_properties.push('invalid value for "recipient_bid", recipient_bid cannot be nil.')
      end

      if @network.nil?
        invalid_properties.push('invalid value for "network", network cannot be nil.')
      end

      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @profiles.nil?
        invalid_properties.push('invalid value for "profiles", profiles cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @invoice_id.nil?
      return false if @invoice_number.nil?
      return false if @destination.nil?
      return false if @recipient_name.nil?
      return false if @recipient_bid.nil?
      return false if @network.nil?
      return false if @id.nil?
      return false if @profiles.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          invoice_id == o.invoice_id &&
          invoice_number == o.invoice_number &&
          destination == o.destination &&
          recipient_name == o.recipient_name &&
          recipient_bid == o.recipient_bid &&
          network == o.network &&
          id == o.id &&
          profiles == o.profiles &&
          error_message == o.error_message &&
          recipient_eia == o.recipient_eia
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [invoice_id, invoice_number, destination, recipient_name, recipient_bid, network, id, profiles, error_message, recipient_eia].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
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
        temp_model = TripletexRubyClient.const_get(type).new
        temp_model.build_from_hash(value)
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
        next if value.nil?
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
