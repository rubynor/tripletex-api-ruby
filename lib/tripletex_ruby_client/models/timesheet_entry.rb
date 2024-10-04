=begin
#Tripletex API

OpenAPI spec version: 2.69.5

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.24

=end

require 'date'

module TripletexRubyClient
  class TimesheetEntry
    attr_accessor :id

    attr_accessor :version

    attr_accessor :changes

    attr_accessor :url

    attr_accessor :project

    attr_accessor :activity

    attr_accessor :date

    attr_accessor :hours

    attr_accessor :chargeable_hours

    attr_accessor :employee

    # Link to stop watches on this hour.
    attr_accessor :time_clocks

    attr_accessor :comment

    # Indicates if the hour can be changed.
    attr_accessor :locked

    attr_accessor :chargeable

    attr_accessor :invoice

    attr_accessor :hourly_rate

    attr_accessor :hourly_cost

    attr_accessor :hourly_cost_percentage

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'version' => :'version',
        :'changes' => :'changes',
        :'url' => :'url',
        :'project' => :'project',
        :'activity' => :'activity',
        :'date' => :'date',
        :'hours' => :'hours',
        :'chargeable_hours' => :'chargeableHours',
        :'employee' => :'employee',
        :'time_clocks' => :'timeClocks',
        :'comment' => :'comment',
        :'locked' => :'locked',
        :'chargeable' => :'chargeable',
        :'invoice' => :'invoice',
        :'hourly_rate' => :'hourlyRate',
        :'hourly_cost' => :'hourlyCost',
        :'hourly_cost_percentage' => :'hourlyCostPercentage'
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
        :'activity' => :'Activity',
        :'date' => :'String',
        :'hours' => :'Float',
        :'chargeable_hours' => :'Float',
        :'employee' => :'Employee',
        :'time_clocks' => :'Array<TimeClock>',
        :'comment' => :'String',
        :'locked' => :'BOOLEAN',
        :'chargeable' => :'BOOLEAN',
        :'invoice' => :'Invoice',
        :'hourly_rate' => :'Float',
        :'hourly_cost' => :'Float',
        :'hourly_cost_percentage' => :'Float'
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

      if attributes.has_key?(:'activity')
        self.activity = attributes[:'activity']
      end

      if attributes.has_key?(:'date')
        self.date = attributes[:'date']
      end

      if attributes.has_key?(:'hours')
        self.hours = attributes[:'hours']
      end

      if attributes.has_key?(:'chargeableHours')
        self.chargeable_hours = attributes[:'chargeableHours']
      end

      if attributes.has_key?(:'employee')
        self.employee = attributes[:'employee']
      end

      if attributes.has_key?(:'timeClocks')
        if (value = attributes[:'timeClocks']).is_a?(Array)
          self.time_clocks = value
        end
      end

      if attributes.has_key?(:'comment')
        self.comment = attributes[:'comment']
      end

      if attributes.has_key?(:'locked')
        self.locked = attributes[:'locked']
      end

      if attributes.has_key?(:'chargeable')
        self.chargeable = attributes[:'chargeable']
      end

      if attributes.has_key?(:'invoice')
        self.invoice = attributes[:'invoice']
      end

      if attributes.has_key?(:'hourlyRate')
        self.hourly_rate = attributes[:'hourlyRate']
      end

      if attributes.has_key?(:'hourlyCost')
        self.hourly_cost = attributes[:'hourlyCost']
      end

      if attributes.has_key?(:'hourlyCostPercentage')
        self.hourly_cost_percentage = attributes[:'hourlyCostPercentage']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @activity.nil?
        invalid_properties.push('invalid value for "activity", activity cannot be nil.')
      end

      if @date.nil?
        invalid_properties.push('invalid value for "date", date cannot be nil.')
      end

      if @hours.nil?
        invalid_properties.push('invalid value for "hours", hours cannot be nil.')
      end

      if @employee.nil?
        invalid_properties.push('invalid value for "employee", employee cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @activity.nil?
      return false if @date.nil?
      return false if @hours.nil?
      return false if @employee.nil?
      true
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
          activity == o.activity &&
          date == o.date &&
          hours == o.hours &&
          chargeable_hours == o.chargeable_hours &&
          employee == o.employee &&
          time_clocks == o.time_clocks &&
          comment == o.comment &&
          locked == o.locked &&
          chargeable == o.chargeable &&
          invoice == o.invoice &&
          hourly_rate == o.hourly_rate &&
          hourly_cost == o.hourly_cost &&
          hourly_cost_percentage == o.hourly_cost_percentage
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, version, changes, url, project, activity, date, hours, chargeable_hours, employee, time_clocks, comment, locked, chargeable, invoice, hourly_rate, hourly_cost, hourly_cost_percentage].hash
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
