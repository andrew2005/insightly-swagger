require 'date'

module InsightlySwagger
  # APINote
  class APINote
    # Unique ID for the Note record
    attr_accessor :note_id

    # Title of the Note (required)
    attr_accessor :title

    # Body of the Note
    attr_accessor :body

    # ID of the Contact, Organisation, Opportunity or Project the Note is linked to
    attr_accessor :link_subject_id

    # Link subject type: CONTACT, ORGANISATION, OPPORTUNITY or PROJECT
    attr_accessor :link_subject_type

    # User ID of the Note owner
    attr_accessor :owner_user_id

    # Date and time Note record created, as Coordinated Universal Time
    attr_accessor :date_created_utc

    # Date and time Note record updated, as Coordinated Universal Time
    attr_accessor :date_updated_utc

    # Visible To: Everyone, Team, Owner or Individuals
    attr_accessor :visible_to

    # If VISIBLE_TO is 'Team', the TEAM_ID
    attr_accessor :visible_team_id

    # If VISIBLE_TO is 'Individuals', a comma separated list of User IDs
    attr_accessor :visible_user_ids

    # Set of Links attached to the Note
    attr_accessor :notelinks

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'note_id' => :'NOTE_ID',
        
        :'title' => :'TITLE',
        
        :'body' => :'BODY',
        
        :'link_subject_id' => :'LINK_SUBJECT_ID',
        
        :'link_subject_type' => :'LINK_SUBJECT_TYPE',
        
        :'owner_user_id' => :'OWNER_USER_ID',
        
        :'date_created_utc' => :'DATE_CREATED_UTC',
        
        :'date_updated_utc' => :'DATE_UPDATED_UTC',
        
        :'visible_to' => :'VISIBLE_TO',
        
        :'visible_team_id' => :'VISIBLE_TEAM_ID',
        
        :'visible_user_ids' => :'VISIBLE_USER_IDS',
        
        :'notelinks' => :'NOTELINKS'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'note_id' => :'Integer',
        :'title' => :'String',
        :'body' => :'String',
        :'link_subject_id' => :'Integer',
        :'link_subject_type' => :'String',
        :'owner_user_id' => :'Integer',
        :'date_created_utc' => :'DateTime',
        :'date_updated_utc' => :'DateTime',
        :'visible_to' => :'String',
        :'visible_team_id' => :'Integer',
        :'visible_user_ids' => :'String',
        :'notelinks' => :'Array<APINoteLink>'
        
      }
    end

    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'NOTE_ID']
        self.note_id = attributes[:'NOTE_ID']
      end
      
      if attributes[:'TITLE']
        self.title = attributes[:'TITLE']
      end
      
      if attributes[:'BODY']
        self.body = attributes[:'BODY']
      end
      
      if attributes[:'LINK_SUBJECT_ID']
        self.link_subject_id = attributes[:'LINK_SUBJECT_ID']
      end
      
      if attributes[:'LINK_SUBJECT_TYPE']
        self.link_subject_type = attributes[:'LINK_SUBJECT_TYPE']
      end
      
      if attributes[:'OWNER_USER_ID']
        self.owner_user_id = attributes[:'OWNER_USER_ID']
      end
      
      if attributes[:'DATE_CREATED_UTC']
        self.date_created_utc = attributes[:'DATE_CREATED_UTC']
      end
      
      if attributes[:'DATE_UPDATED_UTC']
        self.date_updated_utc = attributes[:'DATE_UPDATED_UTC']
      end
      
      if attributes[:'VISIBLE_TO']
        self.visible_to = attributes[:'VISIBLE_TO']
      end
      
      if attributes[:'VISIBLE_TEAM_ID']
        self.visible_team_id = attributes[:'VISIBLE_TEAM_ID']
      end
      
      if attributes[:'VISIBLE_USER_IDS']
        self.visible_user_ids = attributes[:'VISIBLE_USER_IDS']
      end
      
      if attributes[:'NOTELINKS']
        if (value = attributes[:'NOTELINKS']).is_a?(Array)
          self.notelinks = value
        end
      end
      
    end

    # Check equality by comparing each attribute.
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          note_id == o.note_id &&
          title == o.title &&
          body == o.body &&
          link_subject_id == o.link_subject_id &&
          link_subject_type == o.link_subject_type &&
          owner_user_id == o.owner_user_id &&
          date_created_utc == o.date_created_utc &&
          date_updated_utc == o.date_updated_utc &&
          visible_to == o.visible_to &&
          visible_team_id == o.visible_team_id &&
          visible_user_ids == o.visible_user_ids &&
          notelinks == o.notelinks
    end

    # @see the `==` method
    def eql?(o)
      self == o
    end

    # Calculate hash code according to all attributes.
    def hash
      [note_id, title, body, link_subject_id, link_subject_type, owner_user_id, date_created_utc, date_updated_utc, visible_to, visible_team_id, visible_user_ids, notelinks].hash
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
