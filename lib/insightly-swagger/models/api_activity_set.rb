require 'date'

module InsightlySwagger
  # APIActivitySet
  class APIActivitySet
    # Unique ID for the Activity Set record.
    attr_accessor :activityset_id

    # The name for the Activity Set.
    attr_accessor :name

    # Whether or not the Activity Set is assignable to Contacts.
    attr_accessor :for_contacts

    # Whether or not the Activity Set is assignable to Organisations.
    attr_accessor :for_organisations

    # Whether or not the Activity Set is assignable to Opportunities.
    attr_accessor :for_opportunities

    # Whether or not the Activity Set is assignable to Projects.
    attr_accessor :for_projects

    # Whether or not the Activity Set is assignable to Leads.
    attr_accessor :for_leads

    # The unique ID for the Owner of the Activity.
    attr_accessor :owner_user_id

    # The list of Activities that belong to the Activity Set.
    attr_accessor :activities

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'activityset_id' => :'ACTIVITYSET_ID',
        
        :'name' => :'NAME',
        
        :'for_contacts' => :'FOR_CONTACTS',
        
        :'for_organisations' => :'FOR_ORGANISATIONS',
        
        :'for_opportunities' => :'FOR_OPPORTUNITIES',
        
        :'for_projects' => :'FOR_PROJECTS',
        
        :'for_leads' => :'FOR_LEADS',
        
        :'owner_user_id' => :'OWNER_USER_ID',
        
        :'activities' => :'ACTIVITIES'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'activityset_id' => :'Integer',
        :'name' => :'String',
        :'for_contacts' => :'BOOLEAN',
        :'for_organisations' => :'BOOLEAN',
        :'for_opportunities' => :'BOOLEAN',
        :'for_projects' => :'BOOLEAN',
        :'for_leads' => :'BOOLEAN',
        :'owner_user_id' => :'Integer',
        :'activities' => :'Array<APIActivity>'
        
      }
    end

    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'ACTIVITYSET_ID']
        self.activityset_id = attributes[:'ACTIVITYSET_ID']
      end
      
      if attributes[:'NAME']
        self.name = attributes[:'NAME']
      end
      
      if attributes[:'FOR_CONTACTS']
        self.for_contacts = attributes[:'FOR_CONTACTS']
      end
      
      if attributes[:'FOR_ORGANISATIONS']
        self.for_organisations = attributes[:'FOR_ORGANISATIONS']
      end
      
      if attributes[:'FOR_OPPORTUNITIES']
        self.for_opportunities = attributes[:'FOR_OPPORTUNITIES']
      end
      
      if attributes[:'FOR_PROJECTS']
        self.for_projects = attributes[:'FOR_PROJECTS']
      end
      
      if attributes[:'FOR_LEADS']
        self.for_leads = attributes[:'FOR_LEADS']
      end
      
      if attributes[:'OWNER_USER_ID']
        self.owner_user_id = attributes[:'OWNER_USER_ID']
      end
      
      if attributes[:'ACTIVITIES']
        if (value = attributes[:'ACTIVITIES']).is_a?(Array)
          self.activities = value
        end
      end
      
    end

    # Check equality by comparing each attribute.
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          activityset_id == o.activityset_id &&
          name == o.name &&
          for_contacts == o.for_contacts &&
          for_organisations == o.for_organisations &&
          for_opportunities == o.for_opportunities &&
          for_projects == o.for_projects &&
          for_leads == o.for_leads &&
          owner_user_id == o.owner_user_id &&
          activities == o.activities
    end

    # @see the `==` method
    def eql?(o)
      self == o
    end

    # Calculate hash code according to all attributes.
    def hash
      [activityset_id, name, for_contacts, for_organisations, for_opportunities, for_projects, for_leads, owner_user_id, activities].hash
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
