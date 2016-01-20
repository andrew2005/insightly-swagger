require 'date'

module InsightlySwagger
  # Project milestone API object.
  class APIMilestone
    # Unique ID for the Milestone record.
    attr_accessor :milestone_id

    # Unique ID for the Project record the milestone is assigned to.
    attr_accessor :project_id

    # Title of the milestone.
    attr_accessor :title

    # Date when milestone is due.
    attr_accessor :due_date

    # True if milestone is completed.
    attr_accessor :completed

    # Date and time when the milestone was completed (Coordinated Universal Time).
    attr_accessor :completed_date_utc

    # ID of the user that is responsible for the milestone.
    attr_accessor :responsible_user_id

    # Date and time the Milestone record was created, as Coordinated Universal Time
    attr_accessor :date_created_utc

    # Date and time the Milestone record was updated, as Coordinated Universal Time
    attr_accessor :date_updated_utc

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'milestone_id' => :'MILESTONE_ID',
        
        :'project_id' => :'PROJECT_ID',
        
        :'title' => :'TITLE',
        
        :'due_date' => :'DUE_DATE',
        
        :'completed' => :'COMPLETED',
        
        :'completed_date_utc' => :'COMPLETED_DATE_UTC',
        
        :'responsible_user_id' => :'RESPONSIBLE_USER_ID',
        
        :'date_created_utc' => :'DATE_CREATED_UTC',
        
        :'date_updated_utc' => :'DATE_UPDATED_UTC'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'milestone_id' => :'Integer',
        :'project_id' => :'Integer',
        :'title' => :'String',
        :'due_date' => :'DateTime',
        :'completed' => :'BOOLEAN',
        :'completed_date_utc' => :'DateTime',
        :'responsible_user_id' => :'Integer',
        :'date_created_utc' => :'DateTime',
        :'date_updated_utc' => :'DateTime'
        
      }
    end

    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'MILESTONE_ID']
        self.milestone_id = attributes[:'MILESTONE_ID']
      end
      
      if attributes[:'PROJECT_ID']
        self.project_id = attributes[:'PROJECT_ID']
      end
      
      if attributes[:'TITLE']
        self.title = attributes[:'TITLE']
      end
      
      if attributes[:'DUE_DATE']
        self.due_date = attributes[:'DUE_DATE']
      end
      
      if attributes[:'COMPLETED']
        self.completed = attributes[:'COMPLETED']
      end
      
      if attributes[:'COMPLETED_DATE_UTC']
        self.completed_date_utc = attributes[:'COMPLETED_DATE_UTC']
      end
      
      if attributes[:'RESPONSIBLE_USER_ID']
        self.responsible_user_id = attributes[:'RESPONSIBLE_USER_ID']
      end
      
      if attributes[:'DATE_CREATED_UTC']
        self.date_created_utc = attributes[:'DATE_CREATED_UTC']
      end
      
      if attributes[:'DATE_UPDATED_UTC']
        self.date_updated_utc = attributes[:'DATE_UPDATED_UTC']
      end
      
    end

    # Check equality by comparing each attribute.
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          milestone_id == o.milestone_id &&
          project_id == o.project_id &&
          title == o.title &&
          due_date == o.due_date &&
          completed == o.completed &&
          completed_date_utc == o.completed_date_utc &&
          responsible_user_id == o.responsible_user_id &&
          date_created_utc == o.date_created_utc &&
          date_updated_utc == o.date_updated_utc
    end

    # @see the `==` method
    def eql?(o)
      self == o
    end

    # Calculate hash code according to all attributes.
    def hash
      [milestone_id, project_id, title, due_date, completed, completed_date_utc, responsible_user_id, date_created_utc, date_updated_utc].hash
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
