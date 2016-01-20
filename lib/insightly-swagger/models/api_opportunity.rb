require 'date'

module InsightlySwagger
  # APIOpportunity
  class APIOpportunity
    # Unique ID for the Opportunity record
    attr_accessor :opportunity_id

    # Name of the Opportunity
    attr_accessor :opportunity_name

    # Opportunity details
    attr_accessor :opportunity_details

    # Percentage probability of winning the Opportunity, as an integer value from 0 to 100
    attr_accessor :probability

    # Three character code for a currency
    attr_accessor :bid_currency

    # Potential value of the Opportunity, as an integer value
    attr_accessor :bid_amount

    # Type of bid for the Opportunity: Fixed Bid, Per Hour, Per Day, Per Week, Per Month or Per Year
    attr_accessor :bid_type

    # Duration of the bid of the Opportunity, if per hour/day/etc as an integer value
    attr_accessor :bid_duration

    # Total value of the Opportunity, calculated based on BID_AMOUNT, BID_TYPE and BID_DURATION. This is a read-only field.
    attr_accessor :opportunity_value

    # Forecast close date of the Opportunity, in YYYY-MM-DD format
    attr_accessor :forecast_close_date

    # Actual close date of the Opportunity, in YYYY-MM-DD format
    attr_accessor :actual_close_date

    # The Category ID of the Opportunity, if it has been assigned to one
    attr_accessor :category_id

    # The Pipeline ID that the Opportunity is in, if it has been assigned to one. Note! This is a read-only field, to update the Pipeline please use the /Opportunities/{id}/Pipeline endpoint.
    attr_accessor :pipeline_id

    # The Stage ID of the Stage that the Opportunity is in, if it has been assigned to one. Note! This is a read-only field, to update the Pipeline Stage please use the /Opportunities/{id}/PipelineStage endpoint.
    attr_accessor :stage_id

    # Opportunity State (required): Open, Abandoned, Lost, Suspended, Won
    attr_accessor :opportunity_state

    # Opportunity State Reason ID. Optional, if specified this field must have a valid State Reason ID.
    attr_accessor :opportunity_state_reason_id

    # URL of the Image for the Opportunity
    attr_accessor :image_url

    # ID of the responsible user for the Opportunity
    attr_accessor :responsible_user_id

    # User ID of the record owner
    attr_accessor :owner_user_id

    # Date and time Opportunity record created, as Coordinated Universal Time
    attr_accessor :date_created_utc

    # Date and time Opportunity record updated, as Coordinated Universal Time
    attr_accessor :date_updated_utc

    # Visible To: Everyone, Owner, Team or Individuals
    attr_accessor :visible_to

    # If VISIBLE_TO is 'Team', the TEAM_ID
    attr_accessor :visible_team_id

    # If VISIBLE_TO is 'Individuals', a comma separated list of User IDs
    attr_accessor :visible_user_ids

    # Set of Custom Fields attached to the Opportunity
    attr_accessor :customfields

    # Set of Tags attached to the Opportunity
    attr_accessor :tags

    # Set of Links attached to the Opportunity
    attr_accessor :links

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'opportunity_id' => :'OPPORTUNITY_ID',
        
        :'opportunity_name' => :'OPPORTUNITY_NAME',
        
        :'opportunity_details' => :'OPPORTUNITY_DETAILS',
        
        :'probability' => :'PROBABILITY',
        
        :'bid_currency' => :'BID_CURRENCY',
        
        :'bid_amount' => :'BID_AMOUNT',
        
        :'bid_type' => :'BID_TYPE',
        
        :'bid_duration' => :'BID_DURATION',
        
        :'opportunity_value' => :'OPPORTUNITY_VALUE',
        
        :'forecast_close_date' => :'FORECAST_CLOSE_DATE',
        
        :'actual_close_date' => :'ACTUAL_CLOSE_DATE',
        
        :'category_id' => :'CATEGORY_ID',
        
        :'pipeline_id' => :'PIPELINE_ID',
        
        :'stage_id' => :'STAGE_ID',
        
        :'opportunity_state' => :'OPPORTUNITY_STATE',
        
        :'opportunity_state_reason_id' => :'OPPORTUNITY_STATE_REASON_ID',
        
        :'image_url' => :'IMAGE_URL',
        
        :'responsible_user_id' => :'RESPONSIBLE_USER_ID',
        
        :'owner_user_id' => :'OWNER_USER_ID',
        
        :'date_created_utc' => :'DATE_CREATED_UTC',
        
        :'date_updated_utc' => :'DATE_UPDATED_UTC',
        
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
        :'opportunity_id' => :'Integer',
        :'opportunity_name' => :'String',
        :'opportunity_details' => :'String',
        :'probability' => :'Integer',
        :'bid_currency' => :'String',
        :'bid_amount' => :'Integer',
        :'bid_type' => :'String',
        :'bid_duration' => :'Integer',
        :'opportunity_value' => :'Integer',
        :'forecast_close_date' => :'DateTime',
        :'actual_close_date' => :'DateTime',
        :'category_id' => :'Integer',
        :'pipeline_id' => :'Integer',
        :'stage_id' => :'Integer',
        :'opportunity_state' => :'String',
        :'opportunity_state_reason_id' => :'Integer',
        :'image_url' => :'String',
        :'responsible_user_id' => :'Integer',
        :'owner_user_id' => :'Integer',
        :'date_created_utc' => :'DateTime',
        :'date_updated_utc' => :'DateTime',
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

      
      if attributes[:'OPPORTUNITY_ID']
        self.opportunity_id = attributes[:'OPPORTUNITY_ID']
      end
      
      if attributes[:'OPPORTUNITY_NAME']
        self.opportunity_name = attributes[:'OPPORTUNITY_NAME']
      end
      
      if attributes[:'OPPORTUNITY_DETAILS']
        self.opportunity_details = attributes[:'OPPORTUNITY_DETAILS']
      end
      
      if attributes[:'PROBABILITY']
        self.probability = attributes[:'PROBABILITY']
      end
      
      if attributes[:'BID_CURRENCY']
        self.bid_currency = attributes[:'BID_CURRENCY']
      end
      
      if attributes[:'BID_AMOUNT']
        self.bid_amount = attributes[:'BID_AMOUNT']
      end
      
      if attributes[:'BID_TYPE']
        self.bid_type = attributes[:'BID_TYPE']
      end
      
      if attributes[:'BID_DURATION']
        self.bid_duration = attributes[:'BID_DURATION']
      end
      
      if attributes[:'OPPORTUNITY_VALUE']
        self.opportunity_value = attributes[:'OPPORTUNITY_VALUE']
      end
      
      if attributes[:'FORECAST_CLOSE_DATE']
        self.forecast_close_date = attributes[:'FORECAST_CLOSE_DATE']
      end
      
      if attributes[:'ACTUAL_CLOSE_DATE']
        self.actual_close_date = attributes[:'ACTUAL_CLOSE_DATE']
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
      
      if attributes[:'OPPORTUNITY_STATE']
        self.opportunity_state = attributes[:'OPPORTUNITY_STATE']
      end
      
      if attributes[:'OPPORTUNITY_STATE_REASON_ID']
        self.opportunity_state_reason_id = attributes[:'OPPORTUNITY_STATE_REASON_ID']
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
          opportunity_id == o.opportunity_id &&
          opportunity_name == o.opportunity_name &&
          opportunity_details == o.opportunity_details &&
          probability == o.probability &&
          bid_currency == o.bid_currency &&
          bid_amount == o.bid_amount &&
          bid_type == o.bid_type &&
          bid_duration == o.bid_duration &&
          opportunity_value == o.opportunity_value &&
          forecast_close_date == o.forecast_close_date &&
          actual_close_date == o.actual_close_date &&
          category_id == o.category_id &&
          pipeline_id == o.pipeline_id &&
          stage_id == o.stage_id &&
          opportunity_state == o.opportunity_state &&
          opportunity_state_reason_id == o.opportunity_state_reason_id &&
          image_url == o.image_url &&
          responsible_user_id == o.responsible_user_id &&
          owner_user_id == o.owner_user_id &&
          date_created_utc == o.date_created_utc &&
          date_updated_utc == o.date_updated_utc &&
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
      [opportunity_id, opportunity_name, opportunity_details, probability, bid_currency, bid_amount, bid_type, bid_duration, opportunity_value, forecast_close_date, actual_close_date, category_id, pipeline_id, stage_id, opportunity_state, opportunity_state_reason_id, image_url, responsible_user_id, owner_user_id, date_created_utc, date_updated_utc, visible_to, visible_team_id, visible_user_ids, customfields, tags, links].hash
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
