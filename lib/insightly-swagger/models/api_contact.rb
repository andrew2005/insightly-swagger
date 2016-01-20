require 'date'

module InsightlySwagger
  # APIContact
  class APIContact
    # Unique ID for the Contact record
    attr_accessor :contact_id

    # Salutation
    attr_accessor :salutation

    # First/Given Name
    attr_accessor :first_name

    # Last/Family/Surname of the Contact
    attr_accessor :last_name

    # Additional background information
    attr_accessor :background

    # URL of the Image for the Contact.
    attr_accessor :image_url

    # Unique key of the Organisation linked to the Contact, must be a valid ORGANISATION_ID
    attr_accessor :default_linked_organisation

    # User ID of the Contact owner
    attr_accessor :owner_user_id

    # Date and time Contact record created, as Coordinated Universal Time
    attr_accessor :date_created_utc

    # Date and time Contact record updated, as Coordinated Universal Time
    attr_accessor :date_updated_utc

    # Visible To
    attr_accessor :visible_to

    # If VISIBLE_TO is 'Team', then this should be a TEAM_ID
    attr_accessor :visible_team_id

    # If VISIBLE_TO is 'Individuals, this should be a comma separated list of user IDs
    attr_accessor :visible_user_ids

    # Set of custom fields attached to the Contact
    attr_accessor :customfields

    # Set of addresses attached to the Contact
    attr_accessor :addresses

    # Set of contact infos attached to the Contact
    attr_accessor :contactinfos

    # Set of dates to remember attached to the Contact
    attr_accessor :dates

    # Set of tags attached to the Contact
    attr_accessor :tags

    # Set of links attached to the Contact
    attr_accessor :links

    # Set of links to other contacts attached to the Contact
    attr_accessor :contactlinks

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'contact_id' => :'CONTACT_ID',
        
        :'salutation' => :'SALUTATION',
        
        :'first_name' => :'FIRST_NAME',
        
        :'last_name' => :'LAST_NAME',
        
        :'background' => :'BACKGROUND',
        
        :'image_url' => :'IMAGE_URL',
        
        :'default_linked_organisation' => :'DEFAULT_LINKED_ORGANISATION',
        
        :'owner_user_id' => :'OWNER_USER_ID',
        
        :'date_created_utc' => :'DATE_CREATED_UTC',
        
        :'date_updated_utc' => :'DATE_UPDATED_UTC',
        
        :'visible_to' => :'VISIBLE_TO',
        
        :'visible_team_id' => :'VISIBLE_TEAM_ID',
        
        :'visible_user_ids' => :'VISIBLE_USER_IDS',
        
        :'customfields' => :'CUSTOMFIELDS',
        
        :'addresses' => :'ADDRESSES',
        
        :'contactinfos' => :'CONTACTINFOS',
        
        :'dates' => :'DATES',
        
        :'tags' => :'TAGS',
        
        :'links' => :'LINKS',
        
        :'contactlinks' => :'CONTACTLINKS'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'contact_id' => :'Integer',
        :'salutation' => :'String',
        :'first_name' => :'String',
        :'last_name' => :'String',
        :'background' => :'String',
        :'image_url' => :'String',
        :'default_linked_organisation' => :'Integer',
        :'owner_user_id' => :'Integer',
        :'date_created_utc' => :'DateTime',
        :'date_updated_utc' => :'DateTime',
        :'visible_to' => :'String',
        :'visible_team_id' => :'Integer',
        :'visible_user_ids' => :'String',
        :'customfields' => :'Array<APICustomField>',
        :'addresses' => :'Array<APIAddress>',
        :'contactinfos' => :'Array<APIContactInfo>',
        :'dates' => :'Array<APIContactDate>',
        :'tags' => :'Array<APITag>',
        :'links' => :'Array<APILink>',
        :'contactlinks' => :'Array<APIContactLink>'
        
      }
    end

    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'CONTACT_ID']
        self.contact_id = attributes[:'CONTACT_ID']
      end
      
      if attributes[:'SALUTATION']
        self.salutation = attributes[:'SALUTATION']
      end
      
      if attributes[:'FIRST_NAME']
        self.first_name = attributes[:'FIRST_NAME']
      end
      
      if attributes[:'LAST_NAME']
        self.last_name = attributes[:'LAST_NAME']
      end
      
      if attributes[:'BACKGROUND']
        self.background = attributes[:'BACKGROUND']
      end
      
      if attributes[:'IMAGE_URL']
        self.image_url = attributes[:'IMAGE_URL']
      end
      
      if attributes[:'DEFAULT_LINKED_ORGANISATION']
        self.default_linked_organisation = attributes[:'DEFAULT_LINKED_ORGANISATION']
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
      
      if attributes[:'ADDRESSES']
        if (value = attributes[:'ADDRESSES']).is_a?(Array)
          self.addresses = value
        end
      end
      
      if attributes[:'CONTACTINFOS']
        if (value = attributes[:'CONTACTINFOS']).is_a?(Array)
          self.contactinfos = value
        end
      end
      
      if attributes[:'DATES']
        if (value = attributes[:'DATES']).is_a?(Array)
          self.dates = value
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
      
      if attributes[:'CONTACTLINKS']
        if (value = attributes[:'CONTACTLINKS']).is_a?(Array)
          self.contactlinks = value
        end
      end
      
    end

    # Check equality by comparing each attribute.
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          contact_id == o.contact_id &&
          salutation == o.salutation &&
          first_name == o.first_name &&
          last_name == o.last_name &&
          background == o.background &&
          image_url == o.image_url &&
          default_linked_organisation == o.default_linked_organisation &&
          owner_user_id == o.owner_user_id &&
          date_created_utc == o.date_created_utc &&
          date_updated_utc == o.date_updated_utc &&
          visible_to == o.visible_to &&
          visible_team_id == o.visible_team_id &&
          visible_user_ids == o.visible_user_ids &&
          customfields == o.customfields &&
          addresses == o.addresses &&
          contactinfos == o.contactinfos &&
          dates == o.dates &&
          tags == o.tags &&
          links == o.links &&
          contactlinks == o.contactlinks
    end

    # @see the `==` method
    def eql?(o)
      self == o
    end

    # Calculate hash code according to all attributes.
    def hash
      [contact_id, salutation, first_name, last_name, background, image_url, default_linked_organisation, owner_user_id, date_created_utc, date_updated_utc, visible_to, visible_team_id, visible_user_ids, customfields, addresses, contactinfos, dates, tags, links, contactlinks].hash
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
