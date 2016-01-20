require 'date'

module InsightlySwagger
  # APICategory
  class APILeadSource
    # Unique ID for the current Lead Source
    attr_accessor :lead_source_id

    # Lead Source value
    attr_accessor :lead_source

    # checks or sets the current Lead source for being the default value
    attr_accessor :default_value

    # Field Order used to retrive list sorted
    attr_accessor :field_order

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'lead_source_id' => :'LEAD_SOURCE_ID',
        
        :'lead_source' => :'LEAD_SOURCE',
        
        :'default_value' => :'DEFAULT_VALUE',
        
        :'field_order' => :'FIELD_ORDER'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'lead_source_id' => :'Integer',
        :'lead_source' => :'String',
        :'default_value' => :'BOOLEAN',
        :'field_order' => :'Integer'
        
      }
    end

    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'LEAD_SOURCE_ID']
        self.lead_source_id = attributes[:'LEAD_SOURCE_ID']
      end
      
      if attributes[:'LEAD_SOURCE']
        self.lead_source = attributes[:'LEAD_SOURCE']
      end
      
      if attributes[:'DEFAULT_VALUE']
        self.default_value = attributes[:'DEFAULT_VALUE']
      end
      
      if attributes[:'FIELD_ORDER']
        self.field_order = attributes[:'FIELD_ORDER']
      end
      
    end

    # Check equality by comparing each attribute.
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          lead_source_id == o.lead_source_id &&
          lead_source == o.lead_source &&
          default_value == o.default_value &&
          field_order == o.field_order
    end

    # @see the `==` method
    def eql?(o)
      self == o
    end

    # Calculate hash code according to all attributes.
    def hash
      [lead_source_id, lead_source, default_value, field_order].hash
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
