require 'date'

module InsightlySwagger
  # APIComment
  class APIComment
    # Unique ID for the Comment record.
    attr_accessor :comment_id

    # Text of the Comment.
    attr_accessor :body

    # User ID of the Owner of the Comment.
    attr_accessor :owner_user_id

    # ID of the note the comment belongs to.
    attr_accessor :note_id

    # ID of the email the comment belongs to.
    attr_accessor :email_id

    # ID of the task the comment belongs to.
    attr_accessor :task_id

    # Date and Time Comment Created as Coordinated Universal Time.
    attr_accessor :date_created_utc

    # Date and Time Comment Updated as Coordinated Universal Time.
    attr_accessor :date_updated_utc

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'comment_id' => :'COMMENT_ID',
        
        :'body' => :'BODY',
        
        :'owner_user_id' => :'OWNER_USER_ID',
        
        :'note_id' => :'NOTE_ID',
        
        :'email_id' => :'EMAIL_ID',
        
        :'task_id' => :'TASK_ID',
        
        :'date_created_utc' => :'DATE_CREATED_UTC',
        
        :'date_updated_utc' => :'DATE_UPDATED_UTC'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'comment_id' => :'Integer',
        :'body' => :'String',
        :'owner_user_id' => :'Integer',
        :'note_id' => :'Integer',
        :'email_id' => :'Integer',
        :'task_id' => :'Integer',
        :'date_created_utc' => :'DateTime',
        :'date_updated_utc' => :'DateTime'
        
      }
    end

    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'COMMENT_ID']
        self.comment_id = attributes[:'COMMENT_ID']
      end
      
      if attributes[:'BODY']
        self.body = attributes[:'BODY']
      end
      
      if attributes[:'OWNER_USER_ID']
        self.owner_user_id = attributes[:'OWNER_USER_ID']
      end
      
      if attributes[:'NOTE_ID']
        self.note_id = attributes[:'NOTE_ID']
      end
      
      if attributes[:'EMAIL_ID']
        self.email_id = attributes[:'EMAIL_ID']
      end
      
      if attributes[:'TASK_ID']
        self.task_id = attributes[:'TASK_ID']
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
          comment_id == o.comment_id &&
          body == o.body &&
          owner_user_id == o.owner_user_id &&
          note_id == o.note_id &&
          email_id == o.email_id &&
          task_id == o.task_id &&
          date_created_utc == o.date_created_utc &&
          date_updated_utc == o.date_updated_utc
    end

    # @see the `==` method
    def eql?(o)
      self == o
    end

    # Calculate hash code according to all attributes.
    def hash
      [comment_id, body, owner_user_id, note_id, email_id, task_id, date_created_utc, date_updated_utc].hash
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
