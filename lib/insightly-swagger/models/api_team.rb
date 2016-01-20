require 'date'

module InsightlySwagger
  # APITeam
  class APITeam
    # Unique ID for the Team record
    attr_accessor :team_id

    # Name of the Team
    attr_accessor :team_name

    # True, if this Team should not appear in the web UI
    attr_accessor :anonymous_team

    # Date and time Team record created, as Coorindated Universal Time
    attr_accessor :date_created_utc

    # Date and time Team record updated, as Coordinated Universal Time
    attr_accessor :date_updated_utc

    # Set of Team Members attached to the Team
    attr_accessor :teammembers

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'team_id' => :'TEAM_ID',
        
        :'team_name' => :'TEAM_NAME',
        
        :'anonymous_team' => :'ANONYMOUS_TEAM',
        
        :'date_created_utc' => :'DATE_CREATED_UTC',
        
        :'date_updated_utc' => :'DATE_UPDATED_UTC',
        
        :'teammembers' => :'TEAMMEMBERS'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'team_id' => :'Integer',
        :'team_name' => :'String',
        :'anonymous_team' => :'BOOLEAN',
        :'date_created_utc' => :'DateTime',
        :'date_updated_utc' => :'DateTime',
        :'teammembers' => :'Array<APITeamMember>'
        
      }
    end

    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'TEAM_ID']
        self.team_id = attributes[:'TEAM_ID']
      end
      
      if attributes[:'TEAM_NAME']
        self.team_name = attributes[:'TEAM_NAME']
      end
      
      if attributes[:'ANONYMOUS_TEAM']
        self.anonymous_team = attributes[:'ANONYMOUS_TEAM']
      end
      
      if attributes[:'DATE_CREATED_UTC']
        self.date_created_utc = attributes[:'DATE_CREATED_UTC']
      end
      
      if attributes[:'DATE_UPDATED_UTC']
        self.date_updated_utc = attributes[:'DATE_UPDATED_UTC']
      end
      
      if attributes[:'TEAMMEMBERS']
        if (value = attributes[:'TEAMMEMBERS']).is_a?(Array)
          self.teammembers = value
        end
      end
      
    end

    # Check equality by comparing each attribute.
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          team_id == o.team_id &&
          team_name == o.team_name &&
          anonymous_team == o.anonymous_team &&
          date_created_utc == o.date_created_utc &&
          date_updated_utc == o.date_updated_utc &&
          teammembers == o.teammembers
    end

    # @see the `==` method
    def eql?(o)
      self == o
    end

    # Calculate hash code according to all attributes.
    def hash
      [team_id, team_name, anonymous_team, date_created_utc, date_updated_utc, teammembers].hash
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
