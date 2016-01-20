require 'date'

module InsightlySwagger
  # APICustomFieldMetadata
  class APICustomFieldMetadata
    # Unique ID for the custom field record
    attr_accessor :custom_field_id

    # ORDER_ID is required
    attr_accessor :order_id

    # The type of object this custom field is for: Contact, Organisation, Project or Opportunity
    attr_accessor :field_for

    # The name of the custom field
    attr_accessor :field_name

    # The type of data this custom field holds: text, date or dropdown
    attr_accessor :field_type

    # Help text that appears next to the custom field in the UI.
    attr_accessor :field_help_text

    # The default value of the custom field
    attr_accessor :default_value

    # Unique key of the custom field group
    attr_accessor :group_id

    # Whether or not the field is editable
    attr_accessor :editable

    # Whether or not the field is visible
    attr_accessor :visible

    # A list of option values for a dropdown Custom Field
    attr_accessor :custom_field_options

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'custom_field_id' => :'CUSTOM_FIELD_ID',
        
        :'order_id' => :'ORDER_ID',
        
        :'field_for' => :'FIELD_FOR',
        
        :'field_name' => :'FIELD_NAME',
        
        :'field_type' => :'FIELD_TYPE',
        
        :'field_help_text' => :'FIELD_HELP_TEXT',
        
        :'default_value' => :'DEFAULT_VALUE',
        
        :'group_id' => :'GROUP_ID',
        
        :'editable' => :'EDITABLE',
        
        :'visible' => :'VISIBLE',
        
        :'custom_field_options' => :'CUSTOM_FIELD_OPTIONS'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'custom_field_id' => :'String',
        :'order_id' => :'Integer',
        :'field_for' => :'String',
        :'field_name' => :'String',
        :'field_type' => :'String',
        :'field_help_text' => :'String',
        :'default_value' => :'Object',
        :'group_id' => :'Integer',
        :'editable' => :'BOOLEAN',
        :'visible' => :'BOOLEAN',
        :'custom_field_options' => :'Array<APICustomFieldOption>'
        
      }
    end

    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'CUSTOM_FIELD_ID']
        self.custom_field_id = attributes[:'CUSTOM_FIELD_ID']
      end
      
      if attributes[:'ORDER_ID']
        self.order_id = attributes[:'ORDER_ID']
      end
      
      if attributes[:'FIELD_FOR']
        self.field_for = attributes[:'FIELD_FOR']
      end
      
      if attributes[:'FIELD_NAME']
        self.field_name = attributes[:'FIELD_NAME']
      end
      
      if attributes[:'FIELD_TYPE']
        self.field_type = attributes[:'FIELD_TYPE']
      end
      
      if attributes[:'FIELD_HELP_TEXT']
        self.field_help_text = attributes[:'FIELD_HELP_TEXT']
      end
      
      if attributes[:'DEFAULT_VALUE']
        self.default_value = attributes[:'DEFAULT_VALUE']
      end
      
      if attributes[:'GROUP_ID']
        self.group_id = attributes[:'GROUP_ID']
      end
      
      if attributes[:'EDITABLE']
        self.editable = attributes[:'EDITABLE']
      end
      
      if attributes[:'VISIBLE']
        self.visible = attributes[:'VISIBLE']
      end
      
      if attributes[:'CUSTOM_FIELD_OPTIONS']
        if (value = attributes[:'CUSTOM_FIELD_OPTIONS']).is_a?(Array)
          self.custom_field_options = value
        end
      end
      
    end

    # Check equality by comparing each attribute.
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          custom_field_id == o.custom_field_id &&
          order_id == o.order_id &&
          field_for == o.field_for &&
          field_name == o.field_name &&
          field_type == o.field_type &&
          field_help_text == o.field_help_text &&
          default_value == o.default_value &&
          group_id == o.group_id &&
          editable == o.editable &&
          visible == o.visible &&
          custom_field_options == o.custom_field_options
    end

    # @see the `==` method
    def eql?(o)
      self == o
    end

    # Calculate hash code according to all attributes.
    def hash
      [custom_field_id, order_id, field_for, field_name, field_type, field_help_text, default_value, group_id, editable, visible, custom_field_options].hash
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
