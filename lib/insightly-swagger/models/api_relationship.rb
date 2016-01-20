require 'date'

module InsightlySwagger
  # APIRelationship
  class APIRelationship
    # Unique ID for the Relationship record.
    attr_accessor :relationship_id

    # Name of the direct Relationship.
    attr_accessor :forward_title

    # Description of the direct Relationship.
    attr_accessor :forward

    # Name of the inverse Relationship.
    attr_accessor :reverse_title

    # Description of the inverse Relationship.
    attr_accessor :reverse

    # Indicates whether the relationship is availble for linking Contacts.
    attr_accessor :for_contacts

    # Indicates whether the relationship is availble for linking Organisations.
    attr_accessor :for_organisations

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'relationship_id' => :'RELATIONSHIP_ID',
        
        :'forward_title' => :'FORWARD_TITLE',
        
        :'forward' => :'FORWARD',
        
        :'reverse_title' => :'REVERSE_TITLE',
        
        :'reverse' => :'REVERSE',
        
        :'for_contacts' => :'FOR_CONTACTS',
        
        :'for_organisations' => :'FOR_ORGANISATIONS'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'relationship_id' => :'Integer',
        :'forward_title' => :'String',
        :'forward' => :'String',
        :'reverse_title' => :'String',
        :'reverse' => :'String',
        :'for_contacts' => :'BOOLEAN',
        :'for_organisations' => :'BOOLEAN'
        
      }
    end

    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'RELATIONSHIP_ID']
        self.relationship_id = attributes[:'RELATIONSHIP_ID']
      end
      
      if attributes[:'FORWARD_TITLE']
        self.forward_title = attributes[:'FORWARD_TITLE']
      end
      
      if attributes[:'FORWARD']
        self.forward = attributes[:'FORWARD']
      end
      
      if attributes[:'REVERSE_TITLE']
        self.reverse_title = attributes[:'REVERSE_TITLE']
      end
      
      if attributes[:'REVERSE']
        self.reverse = attributes[:'REVERSE']
      end
      
      if attributes[:'FOR_CONTACTS']
        self.for_contacts = attributes[:'FOR_CONTACTS']
      end
      
      if attributes[:'FOR_ORGANISATIONS']
        self.for_organisations = attributes[:'FOR_ORGANISATIONS']
      end
      
    end

    # Check equality by comparing each attribute.
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          relationship_id == o.relationship_id &&
          forward_title == o.forward_title &&
          forward == o.forward &&
          reverse_title == o.reverse_title &&
          reverse == o.reverse &&
          for_contacts == o.for_contacts &&
          for_organisations == o.for_organisations
    end

    # @see the `==` method
    def eql?(o)
      self == o
    end

    # Calculate hash code according to all attributes.
    def hash
      [relationship_id, forward_title, forward, reverse_title, reverse, for_contacts, for_organisations].hash
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
