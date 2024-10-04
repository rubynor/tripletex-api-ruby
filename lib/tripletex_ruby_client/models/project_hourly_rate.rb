=begin
#Tripletex API

OpenAPI spec version: 2.69.5

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.24

=end

require 'date'

module TripletexRubyClient
  class ProjectHourlyRate
    attr_accessor :id

    attr_accessor :version

    attr_accessor :changes

    attr_accessor :url

    attr_accessor :project

    attr_accessor :start_date

    # Show on contract confirmation/offers
    attr_accessor :show_in_project_order

    # Defines the model used for the hourly rate.
    attr_accessor :hourly_rate_model

    # Project specific rates if hourlyRateModel is TYPE_PROJECT_SPECIFIC_HOURLY_RATES. 
    attr_accessor :project_specific_rates

    # Fixed Hourly rates if hourlyRateModel is TYPE_FIXED_HOURLY_RATE.
    attr_accessor :fixed_rate

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'version' => :'version',
        :'changes' => :'changes',
        :'url' => :'url',
        :'project' => :'project',
        :'start_date' => :'startDate',
        :'show_in_project_order' => :'showInProjectOrder',
        :'hourly_rate_model' => :'hourlyRateModel',
        :'project_specific_rates' => :'projectSpecificRates',
        :'fixed_rate' => :'fixedRate'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'version' => :'Integer',
        :'changes' => :'Array<Change>',
        :'url' => :'String',
        :'project' => :'Project',
        :'start_date' => :'String',
        :'show_in_project_order' => :'BOOLEAN',
        :'hourly_rate_model' => :'String',
        :'project_specific_rates' => :'Array<ProjectSpecificRate>',
        :'fixed_rate' => :'Float'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'version')
        self.version = attributes[:'version']
      end

      if attributes.has_key?(:'changes')
        if (value = attributes[:'changes']).is_a?(Array)
          self.changes = value
        end
      end

      if attributes.has_key?(:'url')
        self.url = attributes[:'url']
      end

      if attributes.has_key?(:'project')
        self.project = attributes[:'project']
      end

      if attributes.has_key?(:'startDate')
        self.start_date = attributes[:'startDate']
      end

      if attributes.has_key?(:'showInProjectOrder')
        self.show_in_project_order = attributes[:'showInProjectOrder']
      end

      if attributes.has_key?(:'hourlyRateModel')
        self.hourly_rate_model = attributes[:'hourlyRateModel']
      end

      if attributes.has_key?(:'projectSpecificRates')
        if (value = attributes[:'projectSpecificRates']).is_a?(Array)
          self.project_specific_rates = value
        end
      end

      if attributes.has_key?(:'fixedRate')
        self.fixed_rate = attributes[:'fixedRate']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @start_date.nil?
        invalid_properties.push('invalid value for "start_date", start_date cannot be nil.')
      end

      if @hourly_rate_model.nil?
        invalid_properties.push('invalid value for "hourly_rate_model", hourly_rate_model cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @start_date.nil?
      return false if @hourly_rate_model.nil?
      hourly_rate_model_validator = EnumAttributeValidator.new('String', ['TYPE_PREDEFINED_HOURLY_RATES', 'TYPE_PROJECT_SPECIFIC_HOURLY_RATES', 'TYPE_FIXED_HOURLY_RATE'])
      return false unless hourly_rate_model_validator.valid?(@hourly_rate_model)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] hourly_rate_model Object to be assigned
    def hourly_rate_model=(hourly_rate_model)
      validator = EnumAttributeValidator.new('String', ['TYPE_PREDEFINED_HOURLY_RATES', 'TYPE_PROJECT_SPECIFIC_HOURLY_RATES', 'TYPE_FIXED_HOURLY_RATE'])
      unless validator.valid?(hourly_rate_model)
        fail ArgumentError, 'invalid value for "hourly_rate_model", must be one of #{validator.allowable_values}.'
      end
      @hourly_rate_model = hourly_rate_model
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          version == o.version &&
          changes == o.changes &&
          url == o.url &&
          project == o.project &&
          start_date == o.start_date &&
          show_in_project_order == o.show_in_project_order &&
          hourly_rate_model == o.hourly_rate_model &&
          project_specific_rates == o.project_specific_rates &&
          fixed_rate == o.fixed_rate
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, version, changes, url, project, start_date, show_in_project_order, hourly_rate_model, project_specific_rates, fixed_rate].hash
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
