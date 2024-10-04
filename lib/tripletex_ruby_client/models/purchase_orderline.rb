=begin
#Tripletex API

OpenAPI spec version: 2.69.5

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.24

=end

require 'date'

module TripletexRubyClient
  class PurchaseOrderline
    attr_accessor :id

    attr_accessor :version

    attr_accessor :changes

    attr_accessor :url

    # The purchase order to attach the orderline.
    attr_accessor :purchase_order

    attr_accessor :product

    attr_accessor :description

    attr_accessor :count

    # Unit price purchase (cost) excluding VAT in the order's currency
    attr_accessor :unit_cost_currency

    # Unit price of purchase excluding VAT in the order's currency.If it's not specified,it takes the value from purchase price in productDTO
    attr_accessor :unit_price_excluding_vat_currency

    # The order line's currency. Determined by the order's currency.
    attr_accessor :currency

    # Discount given as a percentage (%)
    attr_accessor :discount

    # Total amount on order line excluding VAT in the order's currency
    attr_accessor :amount_excluding_vat_currency

    # Total amount on order line including VAT in the order's currency
    attr_accessor :amount_including_vat_currency

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'version' => :'version',
        :'changes' => :'changes',
        :'url' => :'url',
        :'purchase_order' => :'purchaseOrder',
        :'product' => :'product',
        :'description' => :'description',
        :'count' => :'count',
        :'unit_cost_currency' => :'unitCostCurrency',
        :'unit_price_excluding_vat_currency' => :'unitPriceExcludingVatCurrency',
        :'currency' => :'currency',
        :'discount' => :'discount',
        :'amount_excluding_vat_currency' => :'amountExcludingVatCurrency',
        :'amount_including_vat_currency' => :'amountIncludingVatCurrency'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'version' => :'Integer',
        :'changes' => :'Array<Change>',
        :'url' => :'String',
        :'purchase_order' => :'PurchaseOrder',
        :'product' => :'Product',
        :'description' => :'String',
        :'count' => :'Float',
        :'unit_cost_currency' => :'Float',
        :'unit_price_excluding_vat_currency' => :'Float',
        :'currency' => :'Currency',
        :'discount' => :'Float',
        :'amount_excluding_vat_currency' => :'Float',
        :'amount_including_vat_currency' => :'Float'
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

      if attributes.has_key?(:'purchaseOrder')
        self.purchase_order = attributes[:'purchaseOrder']
      end

      if attributes.has_key?(:'product')
        self.product = attributes[:'product']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'count')
        self.count = attributes[:'count']
      end

      if attributes.has_key?(:'unitCostCurrency')
        self.unit_cost_currency = attributes[:'unitCostCurrency']
      end

      if attributes.has_key?(:'unitPriceExcludingVatCurrency')
        self.unit_price_excluding_vat_currency = attributes[:'unitPriceExcludingVatCurrency']
      end

      if attributes.has_key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.has_key?(:'discount')
        self.discount = attributes[:'discount']
      end

      if attributes.has_key?(:'amountExcludingVatCurrency')
        self.amount_excluding_vat_currency = attributes[:'amountExcludingVatCurrency']
      end

      if attributes.has_key?(:'amountIncludingVatCurrency')
        self.amount_including_vat_currency = attributes[:'amountIncludingVatCurrency']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @purchase_order.nil?
        invalid_properties.push('invalid value for "purchase_order", purchase_order cannot be nil.')
      end

      if !@count.nil? && @count < 1
        invalid_properties.push('invalid value for "count", must be greater than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @purchase_order.nil?
      return false if !@count.nil? && @count < 1
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] count Value to be assigned
    def count=(count)
      if !count.nil? && count < 1
        fail ArgumentError, 'invalid value for "count", must be greater than or equal to 1.'
      end

      @count = count
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
          purchase_order == o.purchase_order &&
          product == o.product &&
          description == o.description &&
          count == o.count &&
          unit_cost_currency == o.unit_cost_currency &&
          unit_price_excluding_vat_currency == o.unit_price_excluding_vat_currency &&
          currency == o.currency &&
          discount == o.discount &&
          amount_excluding_vat_currency == o.amount_excluding_vat_currency &&
          amount_including_vat_currency == o.amount_including_vat_currency
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, version, changes, url, purchase_order, product, description, count, unit_cost_currency, unit_price_excluding_vat_currency, currency, discount, amount_excluding_vat_currency, amount_including_vat_currency].hash
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
