require 'date'

module InsightlySwagger
  # APIAddress
  class APIAddress
    # Unique key of the address record
    attr_accessor :address_id

    # Address Type
    attr_accessor :address_type

    # Street number and name of address
    attr_accessor :street

    # City
    attr_accessor :city

    # State/Province
    attr_accessor :state

    # Zip or postal code
    attr_accessor :postcode

    # Country, see Countries resource for options
    attr_accessor :country

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'address_id' => :'ADDRESS_ID',
        
        :'address_type' => :'ADDRESS_TYPE',
        
        :'street' => :'STREET',
        
        :'city' => :'CITY',
        
        :'state' => :'STATE',
        
        :'postcode' => :'POSTCODE',
        
        :'country' => :'COUNTRY'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'address_id' => :'Integer',
        :'address_type' => :'String',
        :'street' => :'String',
        :'city' => :'String',
        :'state' => :'String',
        :'postcode' => :'String',
        :'country' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'ADDRESS_ID']
        self.address_id = attributes[:'ADDRESS_ID']
      end
      
      if attributes[:'ADDRESS_TYPE']
        self.address_type = attributes[:'ADDRESS_TYPE']
      end
      
      if attributes[:'STREET']
        self.street = attributes[:'STREET']
      end
      
      if attributes[:'CITY']
        self.city = attributes[:'CITY']
      end
      
      if attributes[:'STATE']
        self.state = attributes[:'STATE']
      end
      
      if attributes[:'POSTCODE']
        self.postcode = attributes[:'POSTCODE']
      end
      
      if attributes[:'COUNTRY']
        self.country = attributes[:'COUNTRY']
      end
      
    end

    # Check equality by comparing each attribute.
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          address_id == o.address_id &&
          address_type == o.address_type &&
          street == o.street &&
          city == o.city &&
          state == o.state &&
          postcode == o.postcode &&
          country == o.country
    end

    # @see the `==` method
    def eql?(o)
      self == o
    end

    # Calculate hash code according to all attributes.
    def hash
      [address_id, address_type, street, city, state, postcode, country].hash
    end

    # build the object from hash
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /^Array<(.*)>/i
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          else
            #TODO show warning in debug mode
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        else
          # data not found in attributes(hash), not an issue as the data can be optional
        end
      end

      self
    end

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
        if value =~ /^(true|t|yes|y|1)$/i
          true
        else
          false
        end
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        _model = InsightlySwagger.const_get(type).new
        _model.build_from_hash(value)
      end
    end

    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_body (backward compatibility))
    def to_body
      to_hash
    end

    # return the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Method to output non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
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
