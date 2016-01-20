require 'date'

module InsightlySwagger
  # APIProject
  class APIProject
    # Unique ID for the Project record
    attr_accessor :project_id

    # Name of the Project (required)
    attr_accessor :project_name

    # Status: Abandoned, Cancelled, Completed, Deferred, In Progress or Not Started
    attr_accessor :status

    # Details of the Project
    attr_accessor :project_details

    # Unique ID for the Opportunity from which the Project may have been converted
    attr_accessor :opportunity_id

    # Date Project started, in YYYY-MM-DD format
    attr_accessor :started_date

    # Date Project completed, in YYYY-MM-DD format
    attr_accessor :completed_date

    # URL of the Image for the Project
    attr_accessor :image_url

    # Responsible user ID
    attr_accessor :responsible_user_id

    # User ID of the Project record owner
    attr_accessor :owner_user_id

    # Date and time Project record created, as Coordinated Universal Time
    attr_accessor :date_created_utc

    # Date and time Project record updated, as Coordinated Universal Time
    attr_accessor :date_updated_utc

    # The Category ID of the Project, if it has been assigned to one.
    attr_accessor :category_id

    # The Pipeline ID that the Project is in, if it has been assigned to one. Note! This is a read-only field, to update the Pipeline please use the /Projects/{id}/Pipeline endpoint.
    attr_accessor :pipeline_id

    # The Stage ID of the Stage the Project is in, if it has been assigned to one. Note! This is a read-only field, to update the Pipeline Stage please use the /Projects/{id}/PipelineStage endpoint.
    attr_accessor :stage_id

    # Visible To: Everyone, Owner, Team or Individuals
    attr_accessor :visible_to

    # If VISIBLE_TO is 'Team', the TEAM_ID
    attr_accessor :visible_team_id

    # If VISIBLE_TO is 'Individuals', a comma separated list of user IDs
    attr_accessor :visible_user_ids

    # Set of Custom Fields attached to the Project
    attr_accessor :customfields

    # Set of Tags attached to the Project
    attr_accessor :tags

    # Set of Links attached to the Project
    attr_accessor :links

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'project_id' => :'PROJECT_ID',
        
        :'project_name' => :'PROJECT_NAME',
        
        :'status' => :'STATUS',
        
        :'project_details' => :'PROJECT_DETAILS',
        
        :'opportunity_id' => :'OPPORTUNITY_ID',
        
        :'started_date' => :'STARTED_DATE',
        
        :'completed_date' => :'COMPLETED_DATE',
        
        :'image_url' => :'IMAGE_URL',
        
        :'responsible_user_id' => :'RESPONSIBLE_USER_ID',
        
        :'owner_user_id' => :'OWNER_USER_ID',
        
        :'date_created_utc' => :'DATE_CREATED_UTC',
        
        :'date_updated_utc' => :'DATE_UPDATED_UTC',
        
        :'category_id' => :'CATEGORY_ID',
        
        :'pipeline_id' => :'PIPELINE_ID',
        
        :'stage_id' => :'STAGE_ID',
        
        :'visible_to' => :'VISIBLE_TO',
        
        :'visible_team_id' => :'VISIBLE_TEAM_ID',
        
        :'visible_user_ids' => :'VISIBLE_USER_IDS',
        
        :'customfields' => :'CUSTOMFIELDS',
        
        :'tags' => :'TAGS',
        
        :'links' => :'LINKS'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'project_id' => :'Integer',
        :'project_name' => :'String',
        :'status' => :'String',
        :'project_details' => :'String',
        :'opportunity_id' => :'Integer',
        :'started_date' => :'DateTime',
        :'completed_date' => :'DateTime',
        :'image_url' => :'String',
        :'responsible_user_id' => :'Integer',
        :'owner_user_id' => :'Integer',
        :'date_created_utc' => :'DateTime',
        :'date_updated_utc' => :'DateTime',
        :'category_id' => :'Integer',
        :'pipeline_id' => :'Integer',
        :'stage_id' => :'Integer',
        :'visible_to' => :'String',
        :'visible_team_id' => :'Integer',
        :'visible_user_ids' => :'String',
        :'customfields' => :'Array<APICustomField>',
        :'tags' => :'Array<APITag>',
        :'links' => :'Array<APILink>'
        
      }
    end

    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'PROJECT_ID']
        self.project_id = attributes[:'PROJECT_ID']
      end
      
      if attributes[:'PROJECT_NAME']
        self.project_name = attributes[:'PROJECT_NAME']
      end
      
      if attributes[:'STATUS']
        self.status = attributes[:'STATUS']
      end
      
      if attributes[:'PROJECT_DETAILS']
        self.project_details = attributes[:'PROJECT_DETAILS']
      end
      
      if attributes[:'OPPORTUNITY_ID']
        self.opportunity_id = attributes[:'OPPORTUNITY_ID']
      end
      
      if attributes[:'STARTED_DATE']
        self.started_date = attributes[:'STARTED_DATE']
      end
      
      if attributes[:'COMPLETED_DATE']
        self.completed_date = attributes[:'COMPLETED_DATE']
      end
      
      if attributes[:'IMAGE_URL']
        self.image_url = attributes[:'IMAGE_URL']
      end
      
      if attributes[:'RESPONSIBLE_USER_ID']
        self.responsible_user_id = attributes[:'RESPONSIBLE_USER_ID']
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
      
      if attributes[:'CATEGORY_ID']
        self.category_id = attributes[:'CATEGORY_ID']
      end
      
      if attributes[:'PIPELINE_ID']
        self.pipeline_id = attributes[:'PIPELINE_ID']
      end
      
      if attributes[:'STAGE_ID']
        self.stage_id = attributes[:'STAGE_ID']
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
      
      if attributes[:'CUSTOMFIELDS']
        if (value = attributes[:'CUSTOMFIELDS']).is_a?(Array)
          self.customfields = value
        end
      end
      
      if attributes[:'TAGS']
        if (value = attributes[:'TAGS']).is_a?(Array)
          self.tags = value
        end
      end
      
      if attributes[:'LINKS']
        if (value = attributes[:'LINKS']).is_a?(Array)
          self.links = value
        end
      end
      
    end

    # Check equality by comparing each attribute.
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          project_id == o.project_id &&
          project_name == o.project_name &&
          status == o.status &&
          project_details == o.project_details &&
          opportunity_id == o.opportunity_id &&
          started_date == o.started_date &&
          completed_date == o.completed_date &&
          image_url == o.image_url &&
          responsible_user_id == o.responsible_user_id &&
          owner_user_id == o.owner_user_id &&
          date_created_utc == o.date_created_utc &&
          date_updated_utc == o.date_updated_utc &&
          category_id == o.category_id &&
          pipeline_id == o.pipeline_id &&
          stage_id == o.stage_id &&
          visible_to == o.visible_to &&
          visible_team_id == o.visible_team_id &&
          visible_user_ids == o.visible_user_ids &&
          customfields == o.customfields &&
          tags == o.tags &&
          links == o.links
    end

    # @see the `==` method
    def eql?(o)
      self == o
    end

    # Calculate hash code according to all attributes.
    def hash
      [project_id, project_name, status, project_details, opportunity_id, started_date, completed_date, image_url, responsible_user_id, owner_user_id, date_created_utc, date_updated_utc, category_id, pipeline_id, stage_id, visible_to, visible_team_id, visible_user_ids, customfields, tags, links].hash
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
