require 'date'

module InsightlySwagger
  # APIEmail
  class APIEmail
    # Unique ID for the email record
    attr_accessor :email_id

    # Unique key of the Gmail message
    attr_accessor :gmail_message_id

    # Date and time email sent, as Coordinated Universal Time
    attr_accessor :email_date_utc

    # From address of the email
    attr_accessor :email_from

    # To addresses of the email
    attr_accessor :email_to

    # CC addresses of the email
    attr_accessor :email_cc

    # Subject of the Email
    attr_accessor :subject

    # The body of the Email. This field is empty on list requests.
    attr_accessor :body

    # An extract of the Email body.
    attr_accessor :body_extract

    # Format of the email: text or html
    attr_accessor :format

    # The size of the email, in bytes
    attr_accessor :size

    # Insightly User ID of the email owner
    attr_accessor :owner_user_id

    # Date and time Email record created, as Coordinated Universal Time
    attr_accessor :date_created_utc

    # Visible To: Everyone, Owner, Team or Individuals
    attr_accessor :visible_to

    # If VISIBLE_TO is 'Team', the TEAM_ID
    attr_accessor :visible_team_id

    # If VISIBLE_TO is 'Individuals', a comma separated list of user IDs
    attr_accessor :visible_user_ids

    # Set of links attached to the Email
    attr_accessor :emaillinks

    # Set of tags attached to the Email
    attr_accessor :tags

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'email_id' => :'EMAIL_ID',
        
        :'gmail_message_id' => :'GMAIL_MESSAGE_ID',
        
        :'email_date_utc' => :'EMAIL_DATE_UTC',
        
        :'email_from' => :'EMAIL_FROM',
        
        :'email_to' => :'EMAIL_TO',
        
        :'email_cc' => :'EMAIL_CC',
        
        :'subject' => :'SUBJECT',
        
        :'body' => :'BODY',
        
        :'body_extract' => :'BODY_EXTRACT',
        
        :'format' => :'FORMAT',
        
        :'size' => :'SIZE',
        
        :'owner_user_id' => :'OWNER_USER_ID',
        
        :'date_created_utc' => :'DATE_CREATED_UTC',
        
        :'visible_to' => :'VISIBLE_TO',
        
        :'visible_team_id' => :'VISIBLE_TEAM_ID',
        
        :'visible_user_ids' => :'VISIBLE_USER_IDS',
        
        :'emaillinks' => :'EMAILLINKS',
        
        :'tags' => :'TAGS'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'email_id' => :'Integer',
        :'gmail_message_id' => :'String',
        :'email_date_utc' => :'DateTime',
        :'email_from' => :'String',
        :'email_to' => :'String',
        :'email_cc' => :'String',
        :'subject' => :'String',
        :'body' => :'String',
        :'body_extract' => :'String',
        :'format' => :'String',
        :'size' => :'Integer',
        :'owner_user_id' => :'Integer',
        :'date_created_utc' => :'DateTime',
        :'visible_to' => :'String',
        :'visible_team_id' => :'Integer',
        :'visible_user_ids' => :'String',
        :'emaillinks' => :'Array<APIEmailLink>',
        :'tags' => :'Array<APITag>'
        
      }
    end

    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'EMAIL_ID']
        self.email_id = attributes[:'EMAIL_ID']
      end
      
      if attributes[:'GMAIL_MESSAGE_ID']
        self.gmail_message_id = attributes[:'GMAIL_MESSAGE_ID']
      end
      
      if attributes[:'EMAIL_DATE_UTC']
        self.email_date_utc = attributes[:'EMAIL_DATE_UTC']
      end
      
      if attributes[:'EMAIL_FROM']
        self.email_from = attributes[:'EMAIL_FROM']
      end
      
      if attributes[:'EMAIL_TO']
        self.email_to = attributes[:'EMAIL_TO']
      end
      
      if attributes[:'EMAIL_CC']
        self.email_cc = attributes[:'EMAIL_CC']
      end
      
      if attributes[:'SUBJECT']
        self.subject = attributes[:'SUBJECT']
      end
      
      if attributes[:'BODY']
        self.body = attributes[:'BODY']
      end
      
      if attributes[:'BODY_EXTRACT']
        self.body_extract = attributes[:'BODY_EXTRACT']
      end
      
      if attributes[:'FORMAT']
        self.format = attributes[:'FORMAT']
      end
      
      if attributes[:'SIZE']
        self.size = attributes[:'SIZE']
      end
      
      if attributes[:'OWNER_USER_ID']
        self.owner_user_id = attributes[:'OWNER_USER_ID']
      end
      
      if attributes[:'DATE_CREATED_UTC']
        self.date_created_utc = attributes[:'DATE_CREATED_UTC']
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
      
      if attributes[:'EMAILLINKS']
        if (value = attributes[:'EMAILLINKS']).is_a?(Array)
          self.emaillinks = value
        end
      end
      
      if attributes[:'TAGS']
        if (value = attributes[:'TAGS']).is_a?(Array)
          self.tags = value
        end
      end
      
    end

    # Check equality by comparing each attribute.
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          email_id == o.email_id &&
          gmail_message_id == o.gmail_message_id &&
          email_date_utc == o.email_date_utc &&
          email_from == o.email_from &&
          email_to == o.email_to &&
          email_cc == o.email_cc &&
          subject == o.subject &&
          body == o.body &&
          body_extract == o.body_extract &&
          format == o.format &&
          size == o.size &&
          owner_user_id == o.owner_user_id &&
          date_created_utc == o.date_created_utc &&
          visible_to == o.visible_to &&
          visible_team_id == o.visible_team_id &&
          visible_user_ids == o.visible_user_ids &&
          emaillinks == o.emaillinks &&
          tags == o.tags
    end

    # @see the `==` method
    def eql?(o)
      self == o
    end

    # Calculate hash code according to all attributes.
    def hash
      [email_id, gmail_message_id, email_date_utc, email_from, email_to, email_cc, subject, body, body_extract, format, size, owner_user_id, date_created_utc, visible_to, visible_team_id, visible_user_ids, emaillinks, tags].hash
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
