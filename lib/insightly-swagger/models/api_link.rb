require 'date'

module InsightlySwagger
  # Information about a Link between Contacts, Organisations, Opportunities, or Projects:  Two linked object IDs should be included.
  class APILink
    # Unique ID for the Link record
    attr_accessor :link_id

    # Unique ID for a Contact on one side of the Relationship, must be a CONTACT_ID
    attr_accessor :contact_id

    # Unique ID for an Opportunity on one side of the Relationship, must be an OPPORTUNITY_ID
    attr_accessor :opportunity_id

    # Unique ID for an Organisation on one side of the Relationship, must be an ORGANISATION_ID
    attr_accessor :organisation_id

    # Unique ID for a Project on one side of the Relationship
    attr_accessor :project_id

    # Unique ID for a second Project on one side of the Relationship
    attr_accessor :second_project_id

    # Unique ID for a second Opportunity on one side of the Relationship
    attr_accessor :second_opportunity_id

    # Description of the Relationship between the linked objects
    attr_accessor :role

    # Details of the Link
    attr_accessor :details

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'link_id' => :'LINK_ID',
        
        :'contact_id' => :'CONTACT_ID',
        
        :'opportunity_id' => :'OPPORTUNITY_ID',
        
        :'organisation_id' => :'ORGANISATION_ID',
        
        :'project_id' => :'PROJECT_ID',
        
        :'second_project_id' => :'SECOND_PROJECT_ID',
        
        :'second_opportunity_id' => :'SECOND_OPPORTUNITY_ID',
        
        :'role' => :'ROLE',
        
        :'details' => :'DETAILS'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'link_id' => :'Integer',
        :'contact_id' => :'Integer',
        :'opportunity_id' => :'Integer',
        :'organisation_id' => :'Integer',
        :'project_id' => :'Integer',
        :'second_project_id' => :'Integer',
        :'second_opportunity_id' => :'Integer',
        :'role' => :'String',
        :'details' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'LINK_ID']
        self.link_id = attributes[:'LINK_ID']
      end
      
      if attributes[:'CONTACT_ID']
        self.contact_id = attributes[:'CONTACT_ID']
      end
      
      if attributes[:'OPPORTUNITY_ID']
        self.opportunity_id = attributes[:'OPPORTUNITY_ID']
      end
      
      if attributes[:'ORGANISATION_ID']
        self.organisation_id = attributes[:'ORGANISATION_ID']
      end
      
      if attributes[:'PROJECT_ID']
        self.project_id = attributes[:'PROJECT_ID']
      end
      
      if attributes[:'SECOND_PROJECT_ID']
        self.second_project_id = attributes[:'SECOND_PROJECT_ID']
      end
      
      if attributes[:'SECOND_OPPORTUNITY_ID']
        self.second_opportunity_id = attributes[:'SECOND_OPPORTUNITY_ID']
      end
      
      if attributes[:'ROLE']
        self.role = attributes[:'ROLE']
      end
      
      if attributes[:'DETAILS']
        self.details = attributes[:'DETAILS']
      end
      
    end

    # Check equality by comparing each attribute.
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          link_id == o.link_id &&
          contact_id == o.contact_id &&
          opportunity_id == o.opportunity_id &&
          organisation_id == o.organisation_id &&
          project_id == o.project_id &&
          second_project_id == o.second_project_id &&
          second_opportunity_id == o.second_opportunity_id &&
          role == o.role &&
          details == o.details
    end

    # @see the `==` method
    def eql?(o)
      self == o
    end

    # Calculate hash code according to all attributes.
    def hash
      [link_id, contact_id, opportunity_id, organisation_id, project_id, second_project_id, second_opportunity_id, role, details].hash
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
