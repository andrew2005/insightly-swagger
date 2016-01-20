require 'date'

module InsightlySwagger
  # APICalendarEvent
  class APICalendarEvent
    # Unique ID for event record
    attr_accessor :event_id

    # Name or title of the event (required)
    attr_accessor :title

    # Location of the event
    attr_accessor :location

    # Details of the event
    attr_accessor :details

    # Start date and time of the event, as Coordinated Universal Time
    attr_accessor :start_date_utc

    # End date and time of the event, as Coordinated Universal Time
    attr_accessor :end_date_utc

    # True, if event is an all-day event
    attr_accessor :all_day

    # True, if event is visible to others
    attr_accessor :publicly_visible

    # Reminder data and time of the event, as Coordinated Universal Time
    attr_accessor :reminder_date_utc

    # True, if a reminder was sent
    attr_accessor :reminder_sent

    # Set of links attached to the Event
    attr_accessor :eventlinks

    # User ID of the event owner (must be a valid user ID)
    attr_accessor :owner_user_id

    # Date and time event record created, as Coordinated Universal Time
    attr_accessor :date_created_utc

    # Date and time event record updated, as Coordinated Universal Time
    attr_accessor :date_updated_utc

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'event_id' => :'EVENT_ID',
        
        :'title' => :'TITLE',
        
        :'location' => :'LOCATION',
        
        :'details' => :'DETAILS',
        
        :'start_date_utc' => :'START_DATE_UTC',
        
        :'end_date_utc' => :'END_DATE_UTC',
        
        :'all_day' => :'ALL_DAY',
        
        :'publicly_visible' => :'PUBLICLY_VISIBLE',
        
        :'reminder_date_utc' => :'REMINDER_DATE_UTC',
        
        :'reminder_sent' => :'REMINDER_SENT',
        
        :'eventlinks' => :'EVENTLINKS',
        
        :'owner_user_id' => :'OWNER_USER_ID',
        
        :'date_created_utc' => :'DATE_CREATED_UTC',
        
        :'date_updated_utc' => :'DATE_UPDATED_UTC'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'event_id' => :'Integer',
        :'title' => :'String',
        :'location' => :'String',
        :'details' => :'String',
        :'start_date_utc' => :'DateTime',
        :'end_date_utc' => :'DateTime',
        :'all_day' => :'BOOLEAN',
        :'publicly_visible' => :'BOOLEAN',
        :'reminder_date_utc' => :'DateTime',
        :'reminder_sent' => :'BOOLEAN',
        :'eventlinks' => :'Array<APIEventLink>',
        :'owner_user_id' => :'Integer',
        :'date_created_utc' => :'DateTime',
        :'date_updated_utc' => :'DateTime'
        
      }
    end

    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'EVENT_ID']
        self.event_id = attributes[:'EVENT_ID']
      end
      
      if attributes[:'TITLE']
        self.title = attributes[:'TITLE']
      end
      
      if attributes[:'LOCATION']
        self.location = attributes[:'LOCATION']
      end
      
      if attributes[:'DETAILS']
        self.details = attributes[:'DETAILS']
      end
      
      if attributes[:'START_DATE_UTC']
        self.start_date_utc = attributes[:'START_DATE_UTC']
      end
      
      if attributes[:'END_DATE_UTC']
        self.end_date_utc = attributes[:'END_DATE_UTC']
      end
      
      if attributes[:'ALL_DAY']
        self.all_day = attributes[:'ALL_DAY']
      end
      
      if attributes[:'PUBLICLY_VISIBLE']
        self.publicly_visible = attributes[:'PUBLICLY_VISIBLE']
      end
      
      if attributes[:'REMINDER_DATE_UTC']
        self.reminder_date_utc = attributes[:'REMINDER_DATE_UTC']
      end
      
      if attributes[:'REMINDER_SENT']
        self.reminder_sent = attributes[:'REMINDER_SENT']
      end
      
      if attributes[:'EVENTLINKS']
        if (value = attributes[:'EVENTLINKS']).is_a?(Array)
          self.eventlinks = value
        end
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
      
    end

    # Check equality by comparing each attribute.
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          event_id == o.event_id &&
          title == o.title &&
          location == o.location &&
          details == o.details &&
          start_date_utc == o.start_date_utc &&
          end_date_utc == o.end_date_utc &&
          all_day == o.all_day &&
          publicly_visible == o.publicly_visible &&
          reminder_date_utc == o.reminder_date_utc &&
          reminder_sent == o.reminder_sent &&
          eventlinks == o.eventlinks &&
          owner_user_id == o.owner_user_id &&
          date_created_utc == o.date_created_utc &&
          date_updated_utc == o.date_updated_utc
    end

    # @see the `==` method
    def eql?(o)
      self == o
    end

    # Calculate hash code according to all attributes.
    def hash
      [event_id, title, location, details, start_date_utc, end_date_utc, all_day, publicly_visible, reminder_date_utc, reminder_sent, eventlinks, owner_user_id, date_created_utc, date_updated_utc].hash
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
