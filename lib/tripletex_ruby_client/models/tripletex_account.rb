=begin
#Tripletex API

OpenAPI spec version: 2.69.5

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.24

=end

require 'date'

module TripletexRubyClient
  class TripletexAccount
    # Information about the company to create. Supply as much info as you have, but at least name, type and address.
    attr_accessor :company

    # Employee to create. Department on this object will also be created if supplied. If null a dummy user and department will be created instead
    attr_accessor :administrator

    # Is this a test account or a paying account?
    attr_accessor :account_type

    # Modules (functionality in the application) to activate for the newly created account. Some modules have extra costs.
    attr_accessor :modules

    # Password for the administrator user to create. Not a part of the administrator employee object since this is a value that never can be read (it is salted and hashed before storing)
    attr_accessor :administrator_password

    # Should the regular creation emails be sent to the company created and its users? If false you probably want to set autoValidateUserLogin to true
    attr_accessor :send_emails

    # If true, the users created will be allowed to log in without validating their email address. ONLY USE THIS IF YOU ALREADY HAVE VALIDATED THE USER EMAILS.
    attr_accessor :auto_validate_user_login

    # Create an API token for the administrator user for the consumer token used during this call. The token will be returned in the response.
    attr_accessor :create_administrator_api_token

    # Create an API token for the company to use to call their clients, only possible for accounting and auditor accounts. The token will be returned in the response.
    attr_accessor :create_company_owned_api_token

    # Should the company we are creating be able to create new Tripletex accounts?
    attr_accessor :may_create_tripletex_accounts

    # Used to calculate prices.
    attr_accessor :number_of_vouchers

    # The chart of accounts to use for the new company
    attr_accessor :chart_of_accounts_type

    attr_accessor :accounting_office

    attr_accessor :auditor

    attr_accessor :reseller

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
        :'company' => :'company',
        :'administrator' => :'administrator',
        :'account_type' => :'accountType',
        :'modules' => :'modules',
        :'administrator_password' => :'administratorPassword',
        :'send_emails' => :'sendEmails',
        :'auto_validate_user_login' => :'autoValidateUserLogin',
        :'create_administrator_api_token' => :'createAdministratorApiToken',
        :'create_company_owned_api_token' => :'createCompanyOwnedApiToken',
        :'may_create_tripletex_accounts' => :'mayCreateTripletexAccounts',
        :'number_of_vouchers' => :'numberOfVouchers',
        :'chart_of_accounts_type' => :'chartOfAccountsType',
        :'accounting_office' => :'accountingOffice',
        :'auditor' => :'auditor',
        :'reseller' => :'reseller'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'company' => :'Company',
        :'administrator' => :'Employee',
        :'account_type' => :'String',
        :'modules' => :'Modules',
        :'administrator_password' => :'String',
        :'send_emails' => :'BOOLEAN',
        :'auto_validate_user_login' => :'BOOLEAN',
        :'create_administrator_api_token' => :'BOOLEAN',
        :'create_company_owned_api_token' => :'BOOLEAN',
        :'may_create_tripletex_accounts' => :'BOOLEAN',
        :'number_of_vouchers' => :'String',
        :'chart_of_accounts_type' => :'String',
        :'accounting_office' => :'BOOLEAN',
        :'auditor' => :'BOOLEAN',
        :'reseller' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'company')
        self.company = attributes[:'company']
      end

      if attributes.has_key?(:'administrator')
        self.administrator = attributes[:'administrator']
      end

      if attributes.has_key?(:'accountType')
        self.account_type = attributes[:'accountType']
      end

      if attributes.has_key?(:'modules')
        self.modules = attributes[:'modules']
      end

      if attributes.has_key?(:'administratorPassword')
        self.administrator_password = attributes[:'administratorPassword']
      end

      if attributes.has_key?(:'sendEmails')
        self.send_emails = attributes[:'sendEmails']
      end

      if attributes.has_key?(:'autoValidateUserLogin')
        self.auto_validate_user_login = attributes[:'autoValidateUserLogin']
      end

      if attributes.has_key?(:'createAdministratorApiToken')
        self.create_administrator_api_token = attributes[:'createAdministratorApiToken']
      end

      if attributes.has_key?(:'createCompanyOwnedApiToken')
        self.create_company_owned_api_token = attributes[:'createCompanyOwnedApiToken']
      end

      if attributes.has_key?(:'mayCreateTripletexAccounts')
        self.may_create_tripletex_accounts = attributes[:'mayCreateTripletexAccounts']
      end

      if attributes.has_key?(:'numberOfVouchers')
        self.number_of_vouchers = attributes[:'numberOfVouchers']
      end

      if attributes.has_key?(:'chartOfAccountsType')
        self.chart_of_accounts_type = attributes[:'chartOfAccountsType']
      end

      if attributes.has_key?(:'accountingOffice')
        self.accounting_office = attributes[:'accountingOffice']
      end

      if attributes.has_key?(:'auditor')
        self.auditor = attributes[:'auditor']
      end

      if attributes.has_key?(:'reseller')
        self.reseller = attributes[:'reseller']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @company.nil?
        invalid_properties.push('invalid value for "company", company cannot be nil.')
      end

      if @account_type.nil?
        invalid_properties.push('invalid value for "account_type", account_type cannot be nil.')
      end

      if @modules.nil?
        invalid_properties.push('invalid value for "modules", modules cannot be nil.')
      end

      if @administrator_password.nil?
        invalid_properties.push('invalid value for "administrator_password", administrator_password cannot be nil.')
      end

      if @number_of_vouchers.nil?
        invalid_properties.push('invalid value for "number_of_vouchers", number_of_vouchers cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @company.nil?
      return false if @account_type.nil?
      account_type_validator = EnumAttributeValidator.new('String', ['TEST', 'PAYING'])
      return false unless account_type_validator.valid?(@account_type)
      return false if @modules.nil?
      return false if @administrator_password.nil?
      return false if @number_of_vouchers.nil?
      number_of_vouchers_validator = EnumAttributeValidator.new('String', ['INTERVAL_0_100', 'INTERVAL_101_500', 'INTERVAL_0_500', 'INTERVAL_501_1000', 'INTERVAL_1001_2000', 'INTERVAL_2001_3500', 'INTERVAL_3501_5000', 'INTERVAL_5001_10000', 'INTERVAL_UNLIMITED'])
      return false unless number_of_vouchers_validator.valid?(@number_of_vouchers)
      chart_of_accounts_type_validator = EnumAttributeValidator.new('String', ['DEFAULT', 'MAMUT_STD_PAYROLL', 'MAMUT_NARF_PAYROLL', 'AGRO_FORRETNING_PAYROLL', 'AGRO_LANDBRUK_PAYROLL', 'AGRO_FISKE_PAYROLL', 'AGRO_FORSOKSRING_PAYROLL', 'AGRO_IDRETTSLAG_PAYROLL', 'AGRO_FORENING_PAYROLL'])
      return false unless chart_of_accounts_type_validator.valid?(@chart_of_accounts_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account_type Object to be assigned
    def account_type=(account_type)
      validator = EnumAttributeValidator.new('String', ['TEST', 'PAYING'])
      unless validator.valid?(account_type)
        fail ArgumentError, 'invalid value for "account_type", must be one of #{validator.allowable_values}.'
      end
      @account_type = account_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] number_of_vouchers Object to be assigned
    def number_of_vouchers=(number_of_vouchers)
      validator = EnumAttributeValidator.new('String', ['INTERVAL_0_100', 'INTERVAL_101_500', 'INTERVAL_0_500', 'INTERVAL_501_1000', 'INTERVAL_1001_2000', 'INTERVAL_2001_3500', 'INTERVAL_3501_5000', 'INTERVAL_5001_10000', 'INTERVAL_UNLIMITED'])
      unless validator.valid?(number_of_vouchers)
        fail ArgumentError, 'invalid value for "number_of_vouchers", must be one of #{validator.allowable_values}.'
      end
      @number_of_vouchers = number_of_vouchers
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] chart_of_accounts_type Object to be assigned
    def chart_of_accounts_type=(chart_of_accounts_type)
      validator = EnumAttributeValidator.new('String', ['DEFAULT', 'MAMUT_STD_PAYROLL', 'MAMUT_NARF_PAYROLL', 'AGRO_FORRETNING_PAYROLL', 'AGRO_LANDBRUK_PAYROLL', 'AGRO_FISKE_PAYROLL', 'AGRO_FORSOKSRING_PAYROLL', 'AGRO_IDRETTSLAG_PAYROLL', 'AGRO_FORENING_PAYROLL'])
      unless validator.valid?(chart_of_accounts_type)
        fail ArgumentError, 'invalid value for "chart_of_accounts_type", must be one of #{validator.allowable_values}.'
      end
      @chart_of_accounts_type = chart_of_accounts_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          company == o.company &&
          administrator == o.administrator &&
          account_type == o.account_type &&
          modules == o.modules &&
          administrator_password == o.administrator_password &&
          send_emails == o.send_emails &&
          auto_validate_user_login == o.auto_validate_user_login &&
          create_administrator_api_token == o.create_administrator_api_token &&
          create_company_owned_api_token == o.create_company_owned_api_token &&
          may_create_tripletex_accounts == o.may_create_tripletex_accounts &&
          number_of_vouchers == o.number_of_vouchers &&
          chart_of_accounts_type == o.chart_of_accounts_type &&
          accounting_office == o.accounting_office &&
          auditor == o.auditor &&
          reseller == o.reseller
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [company, administrator, account_type, modules, administrator_password, send_emails, auto_validate_user_login, create_administrator_api_token, create_company_owned_api_token, may_create_tripletex_accounts, number_of_vouchers, chart_of_accounts_type, accounting_office, auditor, reseller].hash
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
