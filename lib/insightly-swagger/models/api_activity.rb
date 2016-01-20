require 'date'

module InsightlySwagger
  # APIActivity
  class APIActivity
    # Unique ID for the Activity
    attr_accessor :activity_id

    # Unique ID for the Activity Set record that this Activity belongs to
    attr_accessor :activityset_id

    # The name for the Activity
    attr_accessor :activity_name

    # The details for the Activity
    attr_accessor :activity_details

    # The type of Activity
    attr_accessor :activity_type

    # The unique ID for the category associated with the Activity. Only applicable if the ACTIVITY_TYPE is set to TASK.
    attr_accessor :category_id

    # Whether or not a reminder is set on the Activity. Only applicable if the ACTIVITY_TYPE is set to TASK.
    attr_accessor :reminder

    # Number of days before due date of the Activity a reminder will be sent out. Only applicable if the ACTIVITY_TYPE is set to TASK.
    attr_accessor :reminder_days_before_due

    # The time when a reminder will be sent out for the Activity. Only applicable if the ACTIVITY_TYPE is set to TASK.
    attr_accessor :reminder_time

    # Whether the Activity is publicly visible.
    attr_accessor :publicly_visible

    # Whether the Activity is visible to the Owner.
    attr_accessor :owner_visible

    # The unique ID for the Owner of the Activity.
    attr_accessor :owner_user_id

    # The unique ID for the Responsible User of the Activity. Only applicable if the ACTIVITY_TYPE is set to TASK.
    attr_accessor :responsible_user_id

    # The unique ID for the Responsible Team of the Activity. Only applicable if the ACTIVITY_TYPE is set to TASK.
    attr_accessor :assigned_team_id

    # Whether or not to skip scheduling of this Activity on a Sunday.
    attr_accessor :skip_sun

    # Whether or not to skip scheduling of this Activity on a Monday.
    attr_accessor :skip_mon

    # Whether or not to skip scheduling of this Activity on a Tuesday.
    attr_accessor :skip_tue

    # Whether or not to skip scheduling of this Activity on a Wednesday.
    attr_accessor :skip_wed

    # Whether or not to skip scheduling of this Activity on a Thursday.
    attr_accessor :skip_thu

    # Whether or not to skip scheduling of this Activity on a Friday.
    attr_accessor :skip_fri

    # Whether or not to skip scheduling of this Activity on a Saturday.
    attr_accessor :skip_sat

    # Determines the due date based on number of days after the Activity Set is created. Only applicable if the ACTIVITY_TYPE is set to TASK.
    attr_accessor :due_days_after_start

    # Determines the due date based on number of days before the Activity Set ends. Only applicable if the ACTIVITY_TYPE is set to TASK.
    attr_accessor :due_days_before_end

    # Determines the event date based on number of days after the Activity Set is created. Only applicable if the ACTIVITY_TYPE is set to EVENT.
    attr_accessor :event_days_after_start

    # Determines the event date based on number of days before the Activity Set ends. Only applicable if the ACTIVITY_TYPE is set to EVENT.
    attr_accessor :event_days_before_end

    # The time of the event. Only applicable if the ACTIVITY_TYPE is set to EVENT.
    attr_accessor :event_time

    # Whether or not the event is an all day event. Only applicable if the ACTIVITY_TYPE is set to EVENT.
    attr_accessor :all_day

    # Duration of the event in hours. Only applicable if the ACTIVITY_TYPE is set to EVENT.
    attr_accessor :duration

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'activity_id' => :'ACTIVITY_ID',
        
        :'activityset_id' => :'ACTIVITYSET_ID',
        
        :'activity_name' => :'ACTIVITY_NAME',
        
        :'activity_details' => :'ACTIVITY_DETAILS',
        
        :'activity_type' => :'ACTIVITY_TYPE',
        
        :'category_id' => :'CATEGORY_ID',
        
        :'reminder' => :'REMINDER',
        
        :'reminder_days_before_due' => :'REMINDER_DAYS_BEFORE_DUE',
        
        :'reminder_time' => :'REMINDER_TIME',
        
        :'publicly_visible' => :'PUBLICLY_VISIBLE',
        
        :'owner_visible' => :'OWNER_VISIBLE',
        
        :'owner_user_id' => :'OWNER_USER_ID',
        
        :'responsible_user_id' => :'RESPONSIBLE_USER_ID',
        
        :'assigned_team_id' => :'ASSIGNED_TEAM_ID',
        
        :'skip_sun' => :'SKIP_SUN',
        
        :'skip_mon' => :'SKIP_MON',
        
        :'skip_tue' => :'SKIP_TUE',
        
        :'skip_wed' => :'SKIP_WED',
        
        :'skip_thu' => :'SKIP_THU',
        
        :'skip_fri' => :'SKIP_FRI',
        
        :'skip_sat' => :'SKIP_SAT',
        
        :'due_days_after_start' => :'DUE_DAYS_AFTER_START',
        
        :'due_days_before_end' => :'DUE_DAYS_BEFORE_END',
        
        :'event_days_after_start' => :'EVENT_DAYS_AFTER_START',
        
        :'event_days_before_end' => :'EVENT_DAYS_BEFORE_END',
        
        :'event_time' => :'EVENT_TIME',
        
        :'all_day' => :'ALL_DAY',
        
        :'duration' => :'DURATION'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'activity_id' => :'Integer',
        :'activityset_id' => :'Integer',
        :'activity_name' => :'String',
        :'activity_details' => :'String',
        :'activity_type' => :'String',
        :'category_id' => :'Integer',
        :'reminder' => :'BOOLEAN',
        :'reminder_days_before_due' => :'Integer',
        :'reminder_time' => :'String',
        :'publicly_visible' => :'BOOLEAN',
        :'owner_visible' => :'BOOLEAN',
        :'owner_user_id' => :'Integer',
        :'responsible_user_id' => :'Integer',
        :'assigned_team_id' => :'Integer',
        :'skip_sun' => :'BOOLEAN',
        :'skip_mon' => :'BOOLEAN',
        :'skip_tue' => :'BOOLEAN',
        :'skip_wed' => :'BOOLEAN',
        :'skip_thu' => :'BOOLEAN',
        :'skip_fri' => :'BOOLEAN',
        :'skip_sat' => :'BOOLEAN',
        :'due_days_after_start' => :'Integer',
        :'due_days_before_end' => :'Integer',
        :'event_days_after_start' => :'Integer',
        :'event_days_before_end' => :'Integer',
        :'event_time' => :'String',
        :'all_day' => :'BOOLEAN',
        :'duration' => :'Integer'
        
      }
    end

    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'ACTIVITY_ID']
        self.activity_id = attributes[:'ACTIVITY_ID']
      end
      
      if attributes[:'ACTIVITYSET_ID']
        self.activityset_id = attributes[:'ACTIVITYSET_ID']
      end
      
      if attributes[:'ACTIVITY_NAME']
        self.activity_name = attributes[:'ACTIVITY_NAME']
      end
      
      if attributes[:'ACTIVITY_DETAILS']
        self.activity_details = attributes[:'ACTIVITY_DETAILS']
      end
      
      if attributes[:'ACTIVITY_TYPE']
        self.activity_type = attributes[:'ACTIVITY_TYPE']
      end
      
      if attributes[:'CATEGORY_ID']
        self.category_id = attributes[:'CATEGORY_ID']
      end
      
      if attributes[:'REMINDER']
        self.reminder = attributes[:'REMINDER']
      end
      
      if attributes[:'REMINDER_DAYS_BEFORE_DUE']
        self.reminder_days_before_due = attributes[:'REMINDER_DAYS_BEFORE_DUE']
      end
      
      if attributes[:'REMINDER_TIME']
        self.reminder_time = attributes[:'REMINDER_TIME']
      end
      
      if attributes[:'PUBLICLY_VISIBLE']
        self.publicly_visible = attributes[:'PUBLICLY_VISIBLE']
      end
      
      if attributes[:'OWNER_VISIBLE']
        self.owner_visible = attributes[:'OWNER_VISIBLE']
      end
      
      if attributes[:'OWNER_USER_ID']
        self.owner_user_id = attributes[:'OWNER_USER_ID']
      end
      
      if attributes[:'RESPONSIBLE_USER_ID']
        self.responsible_user_id = attributes[:'RESPONSIBLE_USER_ID']
      end
      
      if attributes[:'ASSIGNED_TEAM_ID']
        self.assigned_team_id = attributes[:'ASSIGNED_TEAM_ID']
      end
      
      if attributes[:'SKIP_SUN']
        self.skip_sun = attributes[:'SKIP_SUN']
      end
      
      if attributes[:'SKIP_MON']
        self.skip_mon = attributes[:'SKIP_MON']
      end
      
      if attributes[:'SKIP_TUE']
        self.skip_tue = attributes[:'SKIP_TUE']
      end
      
      if attributes[:'SKIP_WED']
        self.skip_wed = attributes[:'SKIP_WED']
      end
      
      if attributes[:'SKIP_THU']
        self.skip_thu = attributes[:'SKIP_THU']
      end
      
      if attributes[:'SKIP_FRI']
        self.skip_fri = attributes[:'SKIP_FRI']
      end
      
      if attributes[:'SKIP_SAT']
        self.skip_sat = attributes[:'SKIP_SAT']
      end
      
      if attributes[:'DUE_DAYS_AFTER_START']
        self.due_days_after_start = attributes[:'DUE_DAYS_AFTER_START']
      end
      
      if attributes[:'DUE_DAYS_BEFORE_END']
        self.due_days_before_end = attributes[:'DUE_DAYS_BEFORE_END']
      end
      
      if attributes[:'EVENT_DAYS_AFTER_START']
        self.event_days_after_start = attributes[:'EVENT_DAYS_AFTER_START']
      end
      
      if attributes[:'EVENT_DAYS_BEFORE_END']
        self.event_days_before_end = attributes[:'EVENT_DAYS_BEFORE_END']
      end
      
      if attributes[:'EVENT_TIME']
        self.event_time = attributes[:'EVENT_TIME']
      end
      
      if attributes[:'ALL_DAY']
        self.all_day = attributes[:'ALL_DAY']
      end
      
      if attributes[:'DURATION']
        self.duration = attributes[:'DURATION']
      end
      
    end

    # Check equality by comparing each attribute.
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          activity_id == o.activity_id &&
          activityset_id == o.activityset_id &&
          activity_name == o.activity_name &&
          activity_details == o.activity_details &&
          activity_type == o.activity_type &&
          category_id == o.category_id &&
          reminder == o.reminder &&
          reminder_days_before_due == o.reminder_days_before_due &&
          reminder_time == o.reminder_time &&
          publicly_visible == o.publicly_visible &&
          owner_visible == o.owner_visible &&
          owner_user_id == o.owner_user_id &&
          responsible_user_id == o.responsible_user_id &&
          assigned_team_id == o.assigned_team_id &&
          skip_sun == o.skip_sun &&
          skip_mon == o.skip_mon &&
          skip_tue == o.skip_tue &&
          skip_wed == o.skip_wed &&
          skip_thu == o.skip_thu &&
          skip_fri == o.skip_fri &&
          skip_sat == o.skip_sat &&
          due_days_after_start == o.due_days_after_start &&
          due_days_before_end == o.due_days_before_end &&
          event_days_after_start == o.event_days_after_start &&
          event_days_before_end == o.event_days_before_end &&
          event_time == o.event_time &&
          all_day == o.all_day &&
          duration == o.duration
    end

    # @see the `==` method
    def eql?(o)
      self == o
    end

    # Calculate hash code according to all attributes.
    def hash
      [activity_id, activityset_id, activity_name, activity_details, activity_type, category_id, reminder, reminder_days_before_due, reminder_time, publicly_visible, owner_visible, owner_user_id, responsible_user_id, assigned_team_id, skip_sun, skip_mon, skip_tue, skip_wed, skip_thu, skip_fri, skip_sat, due_days_after_start, due_days_before_end, event_days_after_start, event_days_before_end, event_time, all_day, duration].hash
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
