require 'date'

module InsightlySwagger
  # APITask
  class APITask
    # Unique key of the Task record
    attr_accessor :task_id

    # Title of the Task (required)
    attr_accessor :title

    # The Category ID of the Task, if it has been assigned to one
    attr_accessor :category_id

    # Due date of the Task, in YYYY-MM-DD format
    attr_accessor :due_date

    # Completed Date of the Task, in YYYY-MM-DD format
    attr_accessor :completed_date_utc

    # True, if Task is visible to others
    attr_accessor :publicly_visible

    # True, if Task has been completed
    attr_accessor :completed

    # ID of the project the task is related to, if applicable. Should be a valid PROJECT_ID, if set.
    attr_accessor :project_id

    # ID of the opportunity the task is related to. Can only be set if PROJECT_ID is null.
    attr_accessor :opportunity_id

    # ID of the project milestone the task is related to. Can only be set to a milestone of a project defined by PROJECT_ID.
    attr_accessor :milestone_id

    # ID of the pipeline the task is related to. Can only be set to a pipeline associated with the related project or opportunity.
    attr_accessor :pipeline_id

    # ID of the pipeline stage the task is related to. Can only be set to an existing stage of a pipeline associated with related project or opportunity.
    attr_accessor :stage_id

    # Details of the Task
    attr_accessor :details

    # Status: Completed, Deferred, In Progress, Not Started, or Waiting
    attr_accessor :status

    # Priority: 1 (Low), 2 (Normal) or 3 (High)
    attr_accessor :priority

    # Percentage completion of the Task, integer value from 0 to 100
    attr_accessor :percent_complete

    # Start Date of the Task, in YYYY-MM-DD format
    attr_accessor :start_date

    # User ID of the User who assigned the Task to another User
    attr_accessor :assigned_by_user_id

    # Parent Task ID
    attr_accessor :parent_task_id

    # Used to determine if owner of assigned task wants to be kept notified of the Task
    attr_accessor :owner_visible

    # Responsible User ID
    attr_accessor :responsible_user_id

    # ID of the Team which is responsible for the Task
    attr_accessor :assigned_team_id

    # Date when the Task was assigned
    attr_accessor :assigned_date_utc

    # User ID of the Task record owner
    attr_accessor :owner_user_id

    # Date and time Task record created, as Coordinated Universal Time
    attr_accessor :date_created_utc

    # Date and time Task record updated, as Coordinated Universal Time
    attr_accessor :date_updated_utc

    # Reminder date and time of the Task, as Coordinated Universal Time
    attr_accessor :reminder_date_utc

    # True, if a reminder was sent
    attr_accessor :reminder_sent

    # Set of Links attached to the Task
    attr_accessor :tasklinks

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'task_id' => :'TASK_ID',
        
        :'title' => :'TITLE',
        
        :'category_id' => :'CATEGORY_ID',
        
        :'due_date' => :'DUE_DATE',
        
        :'completed_date_utc' => :'COMPLETED_DATE_UTC',
        
        :'publicly_visible' => :'PUBLICLY_VISIBLE',
        
        :'completed' => :'COMPLETED',
        
        :'project_id' => :'PROJECT_ID',
        
        :'opportunity_id' => :'OPPORTUNITY_ID',
        
        :'milestone_id' => :'MILESTONE_ID',
        
        :'pipeline_id' => :'PIPELINE_ID',
        
        :'stage_id' => :'STAGE_ID',
        
        :'details' => :'DETAILS',
        
        :'status' => :'STATUS',
        
        :'priority' => :'PRIORITY',
        
        :'percent_complete' => :'PERCENT_COMPLETE',
        
        :'start_date' => :'START_DATE',
        
        :'assigned_by_user_id' => :'ASSIGNED_BY_USER_ID',
        
        :'parent_task_id' => :'PARENT_TASK_ID',
        
        :'owner_visible' => :'OWNER_VISIBLE',
        
        :'responsible_user_id' => :'RESPONSIBLE_USER_ID',
        
        :'assigned_team_id' => :'ASSIGNED_TEAM_ID',
        
        :'assigned_date_utc' => :'ASSIGNED_DATE_UTC',
        
        :'owner_user_id' => :'OWNER_USER_ID',
        
        :'date_created_utc' => :'DATE_CREATED_UTC',
        
        :'date_updated_utc' => :'DATE_UPDATED_UTC',
        
        :'reminder_date_utc' => :'REMINDER_DATE_UTC',
        
        :'reminder_sent' => :'REMINDER_SENT',
        
        :'tasklinks' => :'TASKLINKS'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'task_id' => :'Integer',
        :'title' => :'String',
        :'category_id' => :'Integer',
        :'due_date' => :'DateTime',
        :'completed_date_utc' => :'DateTime',
        :'publicly_visible' => :'BOOLEAN',
        :'completed' => :'BOOLEAN',
        :'project_id' => :'Integer',
        :'opportunity_id' => :'Integer',
        :'milestone_id' => :'Integer',
        :'pipeline_id' => :'Integer',
        :'stage_id' => :'Integer',
        :'details' => :'String',
        :'status' => :'String',
        :'priority' => :'Integer',
        :'percent_complete' => :'Integer',
        :'start_date' => :'DateTime',
        :'assigned_by_user_id' => :'Integer',
        :'parent_task_id' => :'Integer',
        :'owner_visible' => :'BOOLEAN',
        :'responsible_user_id' => :'Integer',
        :'assigned_team_id' => :'Integer',
        :'assigned_date_utc' => :'DateTime',
        :'owner_user_id' => :'Integer',
        :'date_created_utc' => :'DateTime',
        :'date_updated_utc' => :'DateTime',
        :'reminder_date_utc' => :'DateTime',
        :'reminder_sent' => :'BOOLEAN',
        :'tasklinks' => :'Array<APITaskLink>'
        
      }
    end

    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'TASK_ID']
        self.task_id = attributes[:'TASK_ID']
      end
      
      if attributes[:'TITLE']
        self.title = attributes[:'TITLE']
      end
      
      if attributes[:'CATEGORY_ID']
        self.category_id = attributes[:'CATEGORY_ID']
      end
      
      if attributes[:'DUE_DATE']
        self.due_date = attributes[:'DUE_DATE']
      end
      
      if attributes[:'COMPLETED_DATE_UTC']
        self.completed_date_utc = attributes[:'COMPLETED_DATE_UTC']
      end
      
      if attributes[:'PUBLICLY_VISIBLE']
        self.publicly_visible = attributes[:'PUBLICLY_VISIBLE']
      end
      
      if attributes[:'COMPLETED']
        self.completed = attributes[:'COMPLETED']
      end
      
      if attributes[:'PROJECT_ID']
        self.project_id = attributes[:'PROJECT_ID']
      end
      
      if attributes[:'OPPORTUNITY_ID']
        self.opportunity_id = attributes[:'OPPORTUNITY_ID']
      end
      
      if attributes[:'MILESTONE_ID']
        self.milestone_id = attributes[:'MILESTONE_ID']
      end
      
      if attributes[:'PIPELINE_ID']
        self.pipeline_id = attributes[:'PIPELINE_ID']
      end
      
      if attributes[:'STAGE_ID']
        self.stage_id = attributes[:'STAGE_ID']
      end
      
      if attributes[:'DETAILS']
        self.details = attributes[:'DETAILS']
      end
      
      if attributes[:'STATUS']
        self.status = attributes[:'STATUS']
      end
      
      if attributes[:'PRIORITY']
        self.priority = attributes[:'PRIORITY']
      end
      
      if attributes[:'PERCENT_COMPLETE']
        self.percent_complete = attributes[:'PERCENT_COMPLETE']
      end
      
      if attributes[:'START_DATE']
        self.start_date = attributes[:'START_DATE']
      end
      
      if attributes[:'ASSIGNED_BY_USER_ID']
        self.assigned_by_user_id = attributes[:'ASSIGNED_BY_USER_ID']
      end
      
      if attributes[:'PARENT_TASK_ID']
        self.parent_task_id = attributes[:'PARENT_TASK_ID']
      end
      
      if attributes[:'OWNER_VISIBLE']
        self.owner_visible = attributes[:'OWNER_VISIBLE']
      end
      
      if attributes[:'RESPONSIBLE_USER_ID']
        self.responsible_user_id = attributes[:'RESPONSIBLE_USER_ID']
      end
      
      if attributes[:'ASSIGNED_TEAM_ID']
        self.assigned_team_id = attributes[:'ASSIGNED_TEAM_ID']
      end
      
      if attributes[:'ASSIGNED_DATE_UTC']
        self.assigned_date_utc = attributes[:'ASSIGNED_DATE_UTC']
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
      
      if attributes[:'REMINDER_DATE_UTC']
        self.reminder_date_utc = attributes[:'REMINDER_DATE_UTC']
      end
      
      if attributes[:'REMINDER_SENT']
        self.reminder_sent = attributes[:'REMINDER_SENT']
      end
      
      if attributes[:'TASKLINKS']
        if (value = attributes[:'TASKLINKS']).is_a?(Array)
          self.tasklinks = value
        end
      end
      
    end

    # Check equality by comparing each attribute.
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          task_id == o.task_id &&
          title == o.title &&
          category_id == o.category_id &&
          due_date == o.due_date &&
          completed_date_utc == o.completed_date_utc &&
          publicly_visible == o.publicly_visible &&
          completed == o.completed &&
          project_id == o.project_id &&
          opportunity_id == o.opportunity_id &&
          milestone_id == o.milestone_id &&
          pipeline_id == o.pipeline_id &&
          stage_id == o.stage_id &&
          details == o.details &&
          status == o.status &&
          priority == o.priority &&
          percent_complete == o.percent_complete &&
          start_date == o.start_date &&
          assigned_by_user_id == o.assigned_by_user_id &&
          parent_task_id == o.parent_task_id &&
          owner_visible == o.owner_visible &&
          responsible_user_id == o.responsible_user_id &&
          assigned_team_id == o.assigned_team_id &&
          assigned_date_utc == o.assigned_date_utc &&
          owner_user_id == o.owner_user_id &&
          date_created_utc == o.date_created_utc &&
          date_updated_utc == o.date_updated_utc &&
          reminder_date_utc == o.reminder_date_utc &&
          reminder_sent == o.reminder_sent &&
          tasklinks == o.tasklinks
    end

    # @see the `==` method
    def eql?(o)
      self == o
    end

    # Calculate hash code according to all attributes.
    def hash
      [task_id, title, category_id, due_date, completed_date_utc, publicly_visible, completed, project_id, opportunity_id, milestone_id, pipeline_id, stage_id, details, status, priority, percent_complete, start_date, assigned_by_user_id, parent_task_id, owner_visible, responsible_user_id, assigned_team_id, assigned_date_utc, owner_user_id, date_created_utc, date_updated_utc, reminder_date_utc, reminder_sent, tasklinks].hash
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
