=begin
#The Plaid API

#The Plaid REST API. Please see https://plaid.com/docs/api for more details.

The version of the OpenAPI document: 2020-09-14_1.26.1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.0

=end

require 'date'
require 'time'

module Plaid
  # A transaction within an investment account.
  class InvestmentTransaction
    # The ID of the Investment transaction, unique across all Plaid transactions. Like all Plaid identifiers, the `investment_transaction_id` is case sensitive.
    attr_accessor :investment_transaction_id

    # A legacy field formerly used internally by Plaid to identify certain canceled transactions.
    attr_accessor :cancel_transaction_id

    # The `account_id` of the account against which this transaction posted.
    attr_accessor :account_id

    # The `security_id` to which this transaction is related.
    attr_accessor :security_id

    # The [ISO 8601](https://wikipedia.org/wiki/ISO_8601) posting date for the transaction, or transacted date for pending transactions.
    attr_accessor :date

    # The institution’s description of the transaction.
    attr_accessor :name

    # The number of units of the security involved in this transaction.
    attr_accessor :quantity

    # The complete value of the transaction. Positive values when cash is debited, e.g. purchases of stock; negative values when cash is credited, e.g. sales of stock. Treatment remains the same for cash-only movements unassociated with securities.
    attr_accessor :amount

    # The price of the security at which this transaction occurred.
    attr_accessor :price

    # The combined value of all fees applied to this transaction
    attr_accessor :fees

    # Value is one of the following: `buy`: Buying an investment `sell`: Selling an investment `cancel`: A cancellation of a pending transaction `cash`: Activity that modifies a cash position `fee`: A fee on the account `transfer`: Activity which modifies a position, but not through buy/sell activity e.g. options exercise, portfolio transfer  For descriptions of possible transaction types and subtypes, see the [Investment transaction types schema](https://plaid.com/docs/api/accounts/#investment-transaction-types-schema).
    attr_accessor :type

    # For descriptions of possible transaction types and subtypes, see the [Investment transaction types schema](https://plaid.com/docs/api/accounts/#investment-transaction-types-schema).
    attr_accessor :subtype

    # The ISO-4217 currency code of the transaction. Always `null` if `unofficial_currency_code` is non-`null`.
    attr_accessor :iso_currency_code

    # The unofficial currency code associated with the holding. Always `null` if `iso_currency_code` is non-`null`. Unofficial currency codes are used for currencies that do not have official ISO currency codes, such as cryptocurrencies and the currencies of certain countries.  See the [currency code schema](https://plaid.com/docs/api/accounts#currency-code-schema) for a full listing of supported `iso_currency_code`s.
    attr_accessor :unofficial_currency_code

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
        :'investment_transaction_id' => :'investment_transaction_id',
        :'cancel_transaction_id' => :'cancel_transaction_id',
        :'account_id' => :'account_id',
        :'security_id' => :'security_id',
        :'date' => :'date',
        :'name' => :'name',
        :'quantity' => :'quantity',
        :'amount' => :'amount',
        :'price' => :'price',
        :'fees' => :'fees',
        :'type' => :'type',
        :'subtype' => :'subtype',
        :'iso_currency_code' => :'iso_currency_code',
        :'unofficial_currency_code' => :'unofficial_currency_code'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'investment_transaction_id' => :'String',
        :'cancel_transaction_id' => :'String',
        :'account_id' => :'String',
        :'security_id' => :'String',
        :'date' => :'Date',
        :'name' => :'String',
        :'quantity' => :'Float',
        :'amount' => :'Float',
        :'price' => :'Float',
        :'fees' => :'Float',
        :'type' => :'String',
        :'subtype' => :'String',
        :'iso_currency_code' => :'String',
        :'unofficial_currency_code' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'cancel_transaction_id',
        :'security_id',
        :'fees',
        :'iso_currency_code',
        :'unofficial_currency_code'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Plaid::InvestmentTransaction` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Plaid::InvestmentTransaction`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'investment_transaction_id')
        self.investment_transaction_id = attributes[:'investment_transaction_id']
      end

      if attributes.key?(:'cancel_transaction_id')
        self.cancel_transaction_id = attributes[:'cancel_transaction_id']
      end

      if attributes.key?(:'account_id')
        self.account_id = attributes[:'account_id']
      end

      if attributes.key?(:'security_id')
        self.security_id = attributes[:'security_id']
      end

      if attributes.key?(:'date')
        self.date = attributes[:'date']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'quantity')
        self.quantity = attributes[:'quantity']
      end

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.key?(:'price')
        self.price = attributes[:'price']
      end

      if attributes.key?(:'fees')
        self.fees = attributes[:'fees']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'subtype')
        self.subtype = attributes[:'subtype']
      end

      if attributes.key?(:'iso_currency_code')
        self.iso_currency_code = attributes[:'iso_currency_code']
      end

      if attributes.key?(:'unofficial_currency_code')
        self.unofficial_currency_code = attributes[:'unofficial_currency_code']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @investment_transaction_id.nil?
        invalid_properties.push('invalid value for "investment_transaction_id", investment_transaction_id cannot be nil.')
      end

      if @account_id.nil?
        invalid_properties.push('invalid value for "account_id", account_id cannot be nil.')
      end

      if @date.nil?
        invalid_properties.push('invalid value for "date", date cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @quantity.nil?
        invalid_properties.push('invalid value for "quantity", quantity cannot be nil.')
      end

      if @amount.nil?
        invalid_properties.push('invalid value for "amount", amount cannot be nil.')
      end

      if @price.nil?
        invalid_properties.push('invalid value for "price", price cannot be nil.')
      end

      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      if @subtype.nil?
        invalid_properties.push('invalid value for "subtype", subtype cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @investment_transaction_id.nil?
      return false if @account_id.nil?
      return false if @date.nil?
      return false if @name.nil?
      return false if @quantity.nil?
      return false if @amount.nil?
      return false if @price.nil?
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('String', ["buy", "sell", "cancel", "cash", "fee", "transfer"])
      return false unless type_validator.valid?(@type)
      return false if @subtype.nil?
      subtype_validator = EnumAttributeValidator.new('String', ["account fee", "assignment", "buy", "buy to cover", "contribution", "deposit", "distribution", "dividend", "dividend reinvestment", "exercise", "expire", "fund fee", "interest", "interest receivable", "interest reinvestment", "legal fee", "loan payment", "long-term capital gain", "long-term capital gain reinvestment", "management fee", "margin expense", "merger", "miscellaneous fee", "non-qualified dividend", "non-resident tax", "pending credit", "pending debit", "qualified dividend", "rebalance", "return of principal", "sell", "sell short", "short-term capital gain", "short-term capital gain reinvestment", "spin off", "split", "stock distribution", "tax", "tax withheld", "transfer", "transfer fee", "trust fee", "unqualified gain", "withdrawal"])
      return false unless subtype_validator.valid?(@subtype)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["buy", "sell", "cancel", "cash", "fee", "transfer"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] subtype Object to be assigned
    def subtype=(subtype)
      validator = EnumAttributeValidator.new('String', ["account fee", "assignment", "buy", "buy to cover", "contribution", "deposit", "distribution", "dividend", "dividend reinvestment", "exercise", "expire", "fund fee", "interest", "interest receivable", "interest reinvestment", "legal fee", "loan payment", "long-term capital gain", "long-term capital gain reinvestment", "management fee", "margin expense", "merger", "miscellaneous fee", "non-qualified dividend", "non-resident tax", "pending credit", "pending debit", "qualified dividend", "rebalance", "return of principal", "sell", "sell short", "short-term capital gain", "short-term capital gain reinvestment", "spin off", "split", "stock distribution", "tax", "tax withheld", "transfer", "transfer fee", "trust fee", "unqualified gain", "withdrawal"])
      unless validator.valid?(subtype)
        fail ArgumentError, "invalid value for \"subtype\", must be one of #{validator.allowable_values}."
      end
      @subtype = subtype
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          investment_transaction_id == o.investment_transaction_id &&
          cancel_transaction_id == o.cancel_transaction_id &&
          account_id == o.account_id &&
          security_id == o.security_id &&
          date == o.date &&
          name == o.name &&
          quantity == o.quantity &&
          amount == o.amount &&
          price == o.price &&
          fees == o.fees &&
          type == o.type &&
          subtype == o.subtype &&
          iso_currency_code == o.iso_currency_code &&
          unofficial_currency_code == o.unofficial_currency_code
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [investment_transaction_id, cancel_transaction_id, account_id, security_id, date, name, quantity, amount, price, fees, type, subtype, iso_currency_code, unofficial_currency_code].hash
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
