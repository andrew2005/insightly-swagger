require "uri"

module InsightlySwagger
  class LeadsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Gets a list of Leads.
    # Simple object graphs (excluding Custom Fields, Tags, etc.) are returned if \&quot;brief=true\&quot; is used in the query string.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :include_converted Optional, by default converted leads are not included, pass in \&quot;true\&quot; to include them in the response
    # @option opts [BOOLEAN] :brief Optional, true if response should only contain top level properties of the lead.
    # @option opts [Integer] :skip Optional, number of lead to skip.
    # @option opts [Integer] :top Optional, maximum number of lead to return in the response.
    # @option opts [BOOLEAN] :count_total Optional, true if total number of records should be returned in the response headers.
    # @return [Array<APILead>]
    def get_leads(opts = {})
      data, status_code, headers = get_leads_with_http_info(opts)
      return data
    end

    # Gets a list of Leads.
    # Simple object graphs (excluding Custom Fields, Tags, etc.) are returned if \&quot;brief=true\&quot; is used in the query string.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :include_converted Optional, by default converted leads are not included, pass in \&quot;true\&quot; to include them in the response
    # @option opts [BOOLEAN] :brief Optional, true if response should only contain top level properties of the lead.
    # @option opts [Integer] :skip Optional, number of lead to skip.
    # @option opts [Integer] :top Optional, maximum number of lead to return in the response.
    # @option opts [BOOLEAN] :count_total Optional, true if total number of records should be returned in the response headers.
    # @return [Array<(Array<APILead>, Fixnum, Hash)>] Array<APILead> data, response status code and response headers
    def get_leads_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LeadsApi#get_leads ..."
      end
      
      # resource path
      path = "/Leads".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'include_converted'] = opts[:'include_converted'] if opts[:'include_converted']
      query_params[:'brief'] = opts[:'brief'] if opts[:'brief']
      query_params[:'skip'] = opts[:'skip'] if opts[:'skip']
      query_params[:'top'] = opts[:'top'] if opts[:'top']
      query_params[:'count_total'] = opts[:'count_total'] if opts[:'count_total']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<APILead>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeadsApi#get_leads\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates a Lead
    # A common source of problems when updating leads occurs when users omit required fields, or insert             invalid data into a field. A good troubleshooting technique             is to create a few leads via the web interface, with representative data, links, etc, and then access             these leads via the API, and inspect the returned object graph.
    # @param api_lead A Lead (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :brief Optional, true if you wish to do a partial update containing only top level properties of the Lead. When true, all sub-collections are ignored.
    # @return [APILead]
    def update_lead(api_lead, opts = {})
      data, status_code, headers = update_lead_with_http_info(api_lead, opts)
      return data
    end

    # Updates a Lead
    # A common source of problems when updating leads occurs when users omit required fields, or insert             invalid data into a field. A good troubleshooting technique             is to create a few leads via the web interface, with representative data, links, etc, and then access             these leads via the API, and inspect the returned object graph.
    # @param api_lead A Lead (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :brief Optional, true if you wish to do a partial update containing only top level properties of the Lead. When true, all sub-collections are ignored.
    # @return [Array<(APILead, Fixnum, Hash)>] APILead data, response status code and response headers
    def update_lead_with_http_info(api_lead, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LeadsApi#update_lead ..."
      end
      
      # verify the required parameter 'api_lead' is set
      fail "Missing the required parameter 'api_lead' when calling update_lead" if api_lead.nil?
      
      # resource path
      path = "/Leads".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'brief'] = opts[:'brief'] if opts[:'brief']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(api_lead)
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'APILead')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeadsApi#update_lead\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Adds a Lead
    # A common source of problems when creating leads occurs when users omit required fields, or insert             invalid data into a field. A good troubleshooting technique             is to create a few leads via the web interface, with representative data, links, etc, and then access             these leads via the API, and inspect the returned object graph.
    # @param api_lead The Lead to add (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [APILead]
    def add_lead(api_lead, opts = {})
      data, status_code, headers = add_lead_with_http_info(api_lead, opts)
      return data
    end

    # Adds a Lead
    # A common source of problems when creating leads occurs when users omit required fields, or insert             invalid data into a field. A good troubleshooting technique             is to create a few leads via the web interface, with representative data, links, etc, and then access             these leads via the API, and inspect the returned object graph.
    # @param api_lead The Lead to add (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [Array<(APILead, Fixnum, Hash)>] APILead data, response status code and response headers
    def add_lead_with_http_info(api_lead, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LeadsApi#add_lead ..."
      end
      
      # verify the required parameter 'api_lead' is set
      fail "Missing the required parameter 'api_lead' when calling add_lead" if api_lead.nil?
      
      # resource path
      path = "/Leads".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(api_lead)
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'APILead')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeadsApi#add_lead\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets a filtered list of Leads.
    # Only one optional parameter (excluding include_converted, top, skip and count_total) can be specified. Simple object graphs (excluding Custom Fields, Tags, etc.) are returned if \&quot;brief=true\&quot; is used in the query string.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :email Optional, email address.
    # @option opts [String] :tag Optional, a single tag.
    # @option opts [String] :phone_number Optional, phone number.
    # @option opts [String] :first_name Optional, first name of the contact.
    # @option opts [String] :last_name Optional, last name of the contact.
    # @option opts [String] :city Optional, name of the city from lead address.
    # @option opts [String] :state Optional, state from the lead address.
    # @option opts [String] :postcode Optional, postal code from the lead address.
    # @option opts [String] :country Optional, name of the country from lead address.
    # @option opts [String] :organisation Optional, name of the default organisation.
    # @option opts [DateTime] :updated_after_utc Optional, earliest date when lead was last updated.
    # @option opts [BOOLEAN] :include_converted Optional, by default converted leads are not included, pass in \&quot;true\&quot; to include them in the response
    # @option opts [BOOLEAN] :brief Optional, true if response should only contain top level properties of the lead.
    # @option opts [Integer] :skip Optional, number of lead to skip.
    # @option opts [Integer] :top Optional, maximum number of lead to return in the response.
    # @option opts [BOOLEAN] :count_total Optional, true if total number of records should be returned in the response headers.
    # @return [Array<APILead>]
    def get_leads_by_search(opts = {})
      data, status_code, headers = get_leads_by_search_with_http_info(opts)
      return data
    end

    # Gets a filtered list of Leads.
    # Only one optional parameter (excluding include_converted, top, skip and count_total) can be specified. Simple object graphs (excluding Custom Fields, Tags, etc.) are returned if \&quot;brief=true\&quot; is used in the query string.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :email Optional, email address.
    # @option opts [String] :tag Optional, a single tag.
    # @option opts [String] :phone_number Optional, phone number.
    # @option opts [String] :first_name Optional, first name of the contact.
    # @option opts [String] :last_name Optional, last name of the contact.
    # @option opts [String] :city Optional, name of the city from lead address.
    # @option opts [String] :state Optional, state from the lead address.
    # @option opts [String] :postcode Optional, postal code from the lead address.
    # @option opts [String] :country Optional, name of the country from lead address.
    # @option opts [String] :organisation Optional, name of the default organisation.
    # @option opts [DateTime] :updated_after_utc Optional, earliest date when lead was last updated.
    # @option opts [BOOLEAN] :include_converted Optional, by default converted leads are not included, pass in \&quot;true\&quot; to include them in the response
    # @option opts [BOOLEAN] :brief Optional, true if response should only contain top level properties of the lead.
    # @option opts [Integer] :skip Optional, number of lead to skip.
    # @option opts [Integer] :top Optional, maximum number of lead to return in the response.
    # @option opts [BOOLEAN] :count_total Optional, true if total number of records should be returned in the response headers.
    # @return [Array<(Array<APILead>, Fixnum, Hash)>] Array<APILead> data, response status code and response headers
    def get_leads_by_search_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LeadsApi#get_leads_by_search ..."
      end
      
      # resource path
      path = "/Leads/Search".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'email'] = opts[:'email'] if opts[:'email']
      query_params[:'tag'] = opts[:'tag'] if opts[:'tag']
      query_params[:'phone_number'] = opts[:'phone_number'] if opts[:'phone_number']
      query_params[:'first_name'] = opts[:'first_name'] if opts[:'first_name']
      query_params[:'last_name'] = opts[:'last_name'] if opts[:'last_name']
      query_params[:'city'] = opts[:'city'] if opts[:'city']
      query_params[:'state'] = opts[:'state'] if opts[:'state']
      query_params[:'postcode'] = opts[:'postcode'] if opts[:'postcode']
      query_params[:'country'] = opts[:'country'] if opts[:'country']
      query_params[:'organisation'] = opts[:'organisation'] if opts[:'organisation']
      query_params[:'updated_after_utc'] = opts[:'updated_after_utc'] if opts[:'updated_after_utc']
      query_params[:'include_converted'] = opts[:'include_converted'] if opts[:'include_converted']
      query_params[:'brief'] = opts[:'brief'] if opts[:'brief']
      query_params[:'skip'] = opts[:'skip'] if opts[:'skip']
      query_params[:'top'] = opts[:'top'] if opts[:'top']
      query_params[:'count_total'] = opts[:'count_total'] if opts[:'count_total']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<APILead>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeadsApi#get_leads_by_search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets a Lead
    # 
    # @param id A Lead&#39;s ID
    # @param [Hash] opts the optional parameters
    # @return [APILead]
    def get_lead(id, opts = {})
      data, status_code, headers = get_lead_with_http_info(id, opts)
      return data
    end

    # Gets a Lead
    # 
    # @param id A Lead&#39;s ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(APILead, Fixnum, Hash)>] APILead data, response status code and response headers
    def get_lead_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LeadsApi#get_lead ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling get_lead" if id.nil?
      
      # resource path
      path = "/Leads/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'APILead')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeadsApi#get_lead\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes a Lead
    # 
    # @param id A Lead&#39;s ID
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_lead(id, opts = {})
      delete_lead_with_http_info(id, opts)
      return nil
    end

    # Deletes a Lead
    # 
    # @param id A Lead&#39;s ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_lead_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LeadsApi#delete_lead ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling delete_lead" if id.nil?
      
      # resource path
      path = "/Leads/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeadsApi#delete_lead\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Adds an Activity Set to a Lead
    # 
    # @param id A Lead&#39;s ID
    # @param api_activity_set_assignment The Activity Set Assignment object which contains the configuration information for the Activity Set
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def add_activity_set_assignment(id, api_activity_set_assignment, opts = {})
      add_activity_set_assignment_with_http_info(id, api_activity_set_assignment, opts)
      return nil
    end

    # Adds an Activity Set to a Lead
    # 
    # @param id A Lead&#39;s ID
    # @param api_activity_set_assignment The Activity Set Assignment object which contains the configuration information for the Activity Set
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def add_activity_set_assignment_with_http_info(id, api_activity_set_assignment, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LeadsApi#add_activity_set_assignment ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling add_activity_set_assignment" if id.nil?
      
      # verify the required parameter 'api_activity_set_assignment' is set
      fail "Missing the required parameter 'api_activity_set_assignment' when calling add_activity_set_assignment" if api_activity_set_assignment.nil?
      
      # resource path
      path = "/Leads/{id}/ActivitySetAssignment".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(api_activity_set_assignment)
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeadsApi#add_activity_set_assignment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates a Custom Field
    # 
    # @param id A Lead&#39;s ID (LEAD_ID)
    # @param api_custom_field The Custom Field to edit (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [APICustomField]
    def update_custom_field(id, api_custom_field, opts = {})
      data, status_code, headers = update_custom_field_with_http_info(id, api_custom_field, opts)
      return data
    end

    # Updates a Custom Field
    # 
    # @param id A Lead&#39;s ID (LEAD_ID)
    # @param api_custom_field The Custom Field to edit (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [Array<(APICustomField, Fixnum, Hash)>] APICustomField data, response status code and response headers
    def update_custom_field_with_http_info(id, api_custom_field, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LeadsApi#update_custom_field ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling update_custom_field" if id.nil?
      
      # verify the required parameter 'api_custom_field' is set
      fail "Missing the required parameter 'api_custom_field' when calling update_custom_field" if api_custom_field.nil?
      
      # resource path
      path = "/Leads/{id}/CustomFields".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(api_custom_field)
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'APICustomField')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeadsApi#update_custom_field\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes a Custom Field
    # 
    # @param id A Lead&#39;s ID (LEAD_ID)
    # @param custom_field_id A Custom Field&#39;s ID (CUSTOM_FIELD_ID)
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_custom_field(id, custom_field_id, opts = {})
      delete_custom_field_with_http_info(id, custom_field_id, opts)
      return nil
    end

    # Deletes a Custom Field
    # 
    # @param id A Lead&#39;s ID (LEAD_ID)
    # @param custom_field_id A Custom Field&#39;s ID (CUSTOM_FIELD_ID)
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_custom_field_with_http_info(id, custom_field_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LeadsApi#delete_custom_field ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling delete_custom_field" if id.nil?
      
      # verify the required parameter 'custom_field_id' is set
      fail "Missing the required parameter 'custom_field_id' when calling delete_custom_field" if custom_field_id.nil?
      
      # resource path
      path = "/Leads/{id}/CustomFields/{customFieldId}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s).sub('{' + 'customFieldId' + '}', custom_field_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeadsApi#delete_custom_field\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets a list of Lead&#39;s Emails
    # 
    # @param id A Lead&#39;s ID
    # @param [Hash] opts the optional parameters
    # @option opts [DateTime] :updated_after_utc Optional, earliest date when email was last updated.
    # @option opts [Integer] :top Optional, maximum number of emails to return.
    # @option opts [Integer] :skip Optional, number of emails to skip.
    # @option opts [BOOLEAN] :brief true if only top level properties needs to be returned.
    # @option opts [BOOLEAN] :count_total true if total number of records should be returned in the response headers.
    # @return [Array<APIEmail>]
    def get_emails(id, opts = {})
      data, status_code, headers = get_emails_with_http_info(id, opts)
      return data
    end

    # Gets a list of Lead&#39;s Emails
    # 
    # @param id A Lead&#39;s ID
    # @param [Hash] opts the optional parameters
    # @option opts [DateTime] :updated_after_utc Optional, earliest date when email was last updated.
    # @option opts [Integer] :top Optional, maximum number of emails to return.
    # @option opts [Integer] :skip Optional, number of emails to skip.
    # @option opts [BOOLEAN] :brief true if only top level properties needs to be returned.
    # @option opts [BOOLEAN] :count_total true if total number of records should be returned in the response headers.
    # @return [Array<(Array<APIEmail>, Fixnum, Hash)>] Array<APIEmail> data, response status code and response headers
    def get_emails_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LeadsApi#get_emails ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling get_emails" if id.nil?
      
      # resource path
      path = "/Leads/{id}/Emails".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'updated_after_utc'] = opts[:'updated_after_utc'] if opts[:'updated_after_utc']
      query_params[:'top'] = opts[:'top'] if opts[:'top']
      query_params[:'skip'] = opts[:'skip'] if opts[:'skip']
      query_params[:'brief'] = opts[:'brief'] if opts[:'brief']
      query_params[:'count_total'] = opts[:'count_total'] if opts[:'count_total']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<APIEmail>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeadsApi#get_emails\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets a Lead&#39;s Events
    # 
    # @param id A Lead&#39;s ID (LEAD_ID)
    # @param [Hash] opts the optional parameters
    # @option opts [DateTime] :updated_after_utc Optional, earliest date when event was last updated.
    # @option opts [Integer] :top Optional, maximum number of events to return.
    # @option opts [Integer] :skip Optional, number of events to skip.
    # @option opts [BOOLEAN] :brief true if only top level properties needs to be returned.
    # @option opts [BOOLEAN] :count_total true if total number of records should be returned in the response headers.
    # @return [Array<APICalendarEvent>]
    def get_events(id, opts = {})
      data, status_code, headers = get_events_with_http_info(id, opts)
      return data
    end

    # Gets a Lead&#39;s Events
    # 
    # @param id A Lead&#39;s ID (LEAD_ID)
    # @param [Hash] opts the optional parameters
    # @option opts [DateTime] :updated_after_utc Optional, earliest date when event was last updated.
    # @option opts [Integer] :top Optional, maximum number of events to return.
    # @option opts [Integer] :skip Optional, number of events to skip.
    # @option opts [BOOLEAN] :brief true if only top level properties needs to be returned.
    # @option opts [BOOLEAN] :count_total true if total number of records should be returned in the response headers.
    # @return [Array<(Array<APICalendarEvent>, Fixnum, Hash)>] Array<APICalendarEvent> data, response status code and response headers
    def get_events_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LeadsApi#get_events ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling get_events" if id.nil?
      
      # resource path
      path = "/Leads/{id}/Events".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'updated_after_utc'] = opts[:'updated_after_utc'] if opts[:'updated_after_utc']
      query_params[:'top'] = opts[:'top'] if opts[:'top']
      query_params[:'skip'] = opts[:'skip'] if opts[:'skip']
      query_params[:'brief'] = opts[:'brief'] if opts[:'brief']
      query_params[:'count_total'] = opts[:'count_total'] if opts[:'count_total']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<APICalendarEvent>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeadsApi#get_events\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets a Lead&#39;s File Attachments
    # 
    # @param id A Lead&#39;s ID (LEAD_ID)
    # @param [Hash] opts the optional parameters
    # @option opts [DateTime] :updated_after_utc Optional, earliest date when file attachment was last updated.
    # @option opts [Integer] :skip Optional, number of file attachments to skip.
    # @option opts [Integer] :top Optional, maximum number of file attachments to return in the response.
    # @option opts [BOOLEAN] :count_total true if total number of records should be returned in the response headers.
    # @return [Array<APIFileAttachment>]
    def get_file_attachments(id, opts = {})
      data, status_code, headers = get_file_attachments_with_http_info(id, opts)
      return data
    end

    # Gets a Lead&#39;s File Attachments
    # 
    # @param id A Lead&#39;s ID (LEAD_ID)
    # @param [Hash] opts the optional parameters
    # @option opts [DateTime] :updated_after_utc Optional, earliest date when file attachment was last updated.
    # @option opts [Integer] :skip Optional, number of file attachments to skip.
    # @option opts [Integer] :top Optional, maximum number of file attachments to return in the response.
    # @option opts [BOOLEAN] :count_total true if total number of records should be returned in the response headers.
    # @return [Array<(Array<APIFileAttachment>, Fixnum, Hash)>] Array<APIFileAttachment> data, response status code and response headers
    def get_file_attachments_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LeadsApi#get_file_attachments ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling get_file_attachments" if id.nil?
      
      # resource path
      path = "/Leads/{id}/FileAttachments".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'updated_after_utc'] = opts[:'updated_after_utc'] if opts[:'updated_after_utc']
      query_params[:'skip'] = opts[:'skip'] if opts[:'skip']
      query_params[:'top'] = opts[:'top'] if opts[:'top']
      query_params[:'count_total'] = opts[:'count_total'] if opts[:'count_total']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<APIFileAttachment>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeadsApi#get_file_attachments\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Adds a File Attachment to a Lead
    # 
    # @param id A Lead&#39;s ID (LEAD_ID)
    # @param file This endpoint expects a multi-part form request. See Stack Overflow or v2.2 Python SDK upload() function for an example of how this is done. Can only add one file per request.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :file_name The name and extension of the File Attachment
    # @option opts [String] :content_type The MIME type of the File Attachment
    # @option opts [Integer] :file_category_id The category of the File Attachment, if it has been assigned to one
    # @return [APIFileAttachment]
    def add_file_attachment(id, file, opts = {})
      data, status_code, headers = add_file_attachment_with_http_info(id, file, opts)
      return data
    end

    # Adds a File Attachment to a Lead
    # 
    # @param id A Lead&#39;s ID (LEAD_ID)
    # @param file This endpoint expects a multi-part form request. See Stack Overflow or v2.2 Python SDK upload() function for an example of how this is done. Can only add one file per request.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :file_name The name and extension of the File Attachment
    # @option opts [String] :content_type The MIME type of the File Attachment
    # @option opts [Integer] :file_category_id The category of the File Attachment, if it has been assigned to one
    # @return [Array<(APIFileAttachment, Fixnum, Hash)>] APIFileAttachment data, response status code and response headers
    def add_file_attachment_with_http_info(id, file, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LeadsApi#add_file_attachment ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling add_file_attachment" if id.nil?
      
      # verify the required parameter 'file' is set
      fail "Missing the required parameter 'file' when calling add_file_attachment" if file.nil?
      
      # resource path
      path = "/Leads/{id}/FileAttachments".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['multipart/form-data']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}
      form_params["file"] = file
      form_params["file_name"] = opts[:'file_name'] if opts[:'file_name']
      form_params["content_type"] = opts[:'content_type'] if opts[:'content_type']
      form_params["file_category_id"] = opts[:'file_category_id'] if opts[:'file_category_id']

      # http body (model)
      post_body = nil
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'APIFileAttachment')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeadsApi#add_file_attachment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets a Follow record for the Lead
    # 
    # @param id A Lead&#39;s ID (LEAD_ID)
    # @param [Hash] opts the optional parameters
    # @return [APIFollow]
    def get_follow(id, opts = {})
      data, status_code, headers = get_follow_with_http_info(id, opts)
      return data
    end

    # Gets a Follow record for the Lead
    # 
    # @param id A Lead&#39;s ID (LEAD_ID)
    # @param [Hash] opts the optional parameters
    # @return [Array<(APIFollow, Fixnum, Hash)>] APIFollow data, response status code and response headers
    def get_follow_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LeadsApi#get_follow ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling get_follow" if id.nil?
      
      # resource path
      path = "/Leads/{id}/Follow".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'APIFollow')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeadsApi#get_follow\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Start following a Lead
    # 
    # @param id A Lead&#39;s ID (LEAD_ID)
    # @param [Hash] opts the optional parameters
    # @return [APIFollow]
    def add_follow(id, opts = {})
      data, status_code, headers = add_follow_with_http_info(id, opts)
      return data
    end

    # Start following a Lead
    # 
    # @param id A Lead&#39;s ID (LEAD_ID)
    # @param [Hash] opts the optional parameters
    # @return [Array<(APIFollow, Fixnum, Hash)>] APIFollow data, response status code and response headers
    def add_follow_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LeadsApi#add_follow ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling add_follow" if id.nil?
      
      # resource path
      path = "/Leads/{id}/Follow".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'APIFollow')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeadsApi#add_follow\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Stop following a Lead
    # 
    # @param id A Lead&#39;s ID (LEAD_ID)
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_follow(id, opts = {})
      delete_follow_with_http_info(id, opts)
      return nil
    end

    # Stop following a Lead
    # 
    # @param id A Lead&#39;s ID (LEAD_ID)
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_follow_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LeadsApi#delete_follow ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling delete_follow" if id.nil?
      
      # resource path
      path = "/Leads/{id}/Follow".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeadsApi#delete_follow\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets a Lead&#39;s Image
    # 
    # @param id A Lead&#39;s ID (LEAD_ID)
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def get_image(id, opts = {})
      get_image_with_http_info(id, opts)
      return nil
    end

    # Gets a Lead&#39;s Image
    # 
    # @param id A Lead&#39;s ID (LEAD_ID)
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def get_image_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LeadsApi#get_image ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling get_image" if id.nil?
      
      # resource path
      path = "/Leads/{id}/Image".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/octet-stream']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeadsApi#get_image\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes a Lead&#39;s Image
    # 
    # @param id A Lead&#39;s ID (LEAD_ID)
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_image(id, opts = {})
      delete_image_with_http_info(id, opts)
      return nil
    end

    # Deletes a Lead&#39;s Image
    # 
    # @param id A Lead&#39;s ID (LEAD_ID)
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_image_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LeadsApi#delete_image ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling delete_image" if id.nil?
      
      # resource path
      path = "/Leads/{id}/Image".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeadsApi#delete_image\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates a Lead&#39;s Image
    # This action will replace any existing Image attached to the Lead. The contents of the image file should be sent as binary data in the request payload. See v2.2 Python SDK for an example of how this is done.
    # @param id A Lead&#39;s ID (LEAD_ID)
    # @param filename Name of Image File to be attached to Lead
    # @param file File to upload
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def update_image(id, filename, file, opts = {})
      update_image_with_http_info(id, filename, file, opts)
      return nil
    end

    # Updates a Lead&#39;s Image
    # This action will replace any existing Image attached to the Lead. The contents of the image file should be sent as binary data in the request payload. See v2.2 Python SDK for an example of how this is done.
    # @param id A Lead&#39;s ID (LEAD_ID)
    # @param filename Name of Image File to be attached to Lead
    # @param file File to upload
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_image_with_http_info(id, filename, file, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LeadsApi#update_image ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling update_image" if id.nil?
      
      # verify the required parameter 'filename' is set
      fail "Missing the required parameter 'filename' when calling update_image" if filename.nil?
      
      # verify the required parameter 'file' is set
      fail "Missing the required parameter 'file' when calling update_image" if file.nil?
      
      # resource path
      path = "/Leads/{id}/Image/{filename}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s).sub('{' + 'filename' + '}', filename.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/octet-stream']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(file)
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeadsApi#update_image\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets a Lead&#39;s Notes
    # 
    # @param id A Lead&#39;s ID (LEAD_ID)
    # @param [Hash] opts the optional parameters
    # @option opts [DateTime] :updated_after_utc Optional, earliest date when note was last updated.
    # @option opts [Integer] :top Optional, maximum number of notes to return.
    # @option opts [Integer] :skip Optional, number of notes to skip.
    # @option opts [BOOLEAN] :brief true if only top level properties needs to be returned.
    # @option opts [BOOLEAN] :count_total true if total number of records should be returned in the response headers.
    # @return [Array<APINote>]
    def get_notes(id, opts = {})
      data, status_code, headers = get_notes_with_http_info(id, opts)
      return data
    end

    # Gets a Lead&#39;s Notes
    # 
    # @param id A Lead&#39;s ID (LEAD_ID)
    # @param [Hash] opts the optional parameters
    # @option opts [DateTime] :updated_after_utc Optional, earliest date when note was last updated.
    # @option opts [Integer] :top Optional, maximum number of notes to return.
    # @option opts [Integer] :skip Optional, number of notes to skip.
    # @option opts [BOOLEAN] :brief true if only top level properties needs to be returned.
    # @option opts [BOOLEAN] :count_total true if total number of records should be returned in the response headers.
    # @return [Array<(Array<APINote>, Fixnum, Hash)>] Array<APINote> data, response status code and response headers
    def get_notes_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LeadsApi#get_notes ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling get_notes" if id.nil?
      
      # resource path
      path = "/Leads/{id}/Notes".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'updated_after_utc'] = opts[:'updated_after_utc'] if opts[:'updated_after_utc']
      query_params[:'top'] = opts[:'top'] if opts[:'top']
      query_params[:'skip'] = opts[:'skip'] if opts[:'skip']
      query_params[:'brief'] = opts[:'brief'] if opts[:'brief']
      query_params[:'count_total'] = opts[:'count_total'] if opts[:'count_total']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<APINote>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeadsApi#get_notes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Adds a Note to a Lead.
    # 
    # @param id A Lead&#39;s ID (LEAD_ID)
    # @param api_note The Note to add (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [APINote]
    def add_note(id, api_note, opts = {})
      data, status_code, headers = add_note_with_http_info(id, api_note, opts)
      return data
    end

    # Adds a Note to a Lead.
    # 
    # @param id A Lead&#39;s ID (LEAD_ID)
    # @param api_note The Note to add (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [Array<(APINote, Fixnum, Hash)>] APINote data, response status code and response headers
    def add_note_with_http_info(id, api_note, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LeadsApi#add_note ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling add_note" if id.nil?
      
      # verify the required parameter 'api_note' is set
      fail "Missing the required parameter 'api_note' when calling add_note" if api_note.nil?
      
      # resource path
      path = "/Leads/{id}/Notes".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(api_note)
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'APINote')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeadsApi#add_note\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Adds a Tag for a Lead
    # 
    # @param id A Lead&#39;s ID (LEAD_ID)
    # @param api_tag The Tag to add (just include the JSON object in request body.
    # @param [Hash] opts the optional parameters
    # @return [APITag]
    def add_tag(id, api_tag, opts = {})
      data, status_code, headers = add_tag_with_http_info(id, api_tag, opts)
      return data
    end

    # Adds a Tag for a Lead
    # 
    # @param id A Lead&#39;s ID (LEAD_ID)
    # @param api_tag The Tag to add (just include the JSON object in request body.
    # @param [Hash] opts the optional parameters
    # @return [Array<(APITag, Fixnum, Hash)>] APITag data, response status code and response headers
    def add_tag_with_http_info(id, api_tag, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LeadsApi#add_tag ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling add_tag" if id.nil?
      
      # verify the required parameter 'api_tag' is set
      fail "Missing the required parameter 'api_tag' when calling add_tag" if api_tag.nil?
      
      # resource path
      path = "/Leads/{id}/Tags".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(api_tag)
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'APITag')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeadsApi#add_tag\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes a Tag from a Lead
    # 
    # @param id A Lead&#39;s ID (LEAD_ID)
    # @param tag_name A Tag&#39;s name
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_tag(id, tag_name, opts = {})
      delete_tag_with_http_info(id, tag_name, opts)
      return nil
    end

    # Deletes a Tag from a Lead
    # 
    # @param id A Lead&#39;s ID (LEAD_ID)
    # @param tag_name A Tag&#39;s name
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_tag_with_http_info(id, tag_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LeadsApi#delete_tag ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling delete_tag" if id.nil?
      
      # verify the required parameter 'tag_name' is set
      fail "Missing the required parameter 'tag_name' when calling delete_tag" if tag_name.nil?
      
      # resource path
      path = "/Leads/{id}/Tags/{tagName}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s).sub('{' + 'tagName' + '}', tag_name.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeadsApi#delete_tag\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets a list of Lead&#39;s Tasks
    # 
    # @param id A Lead&#39;s ID
    # @param [Hash] opts the optional parameters
    # @option opts [DateTime] :updated_after_utc Optional, earliest date when task was last updated.
    # @option opts [Integer] :top Optional, maximum number of tasks to return.
    # @option opts [Integer] :skip Optional, number of tasks to skip.
    # @option opts [BOOLEAN] :brief true if only top level properties needs to be returned.
    # @option opts [BOOLEAN] :count_total true if total number of records should be returned in the response headers.
    # @return [Array<APITask>]
    def get_tasks(id, opts = {})
      data, status_code, headers = get_tasks_with_http_info(id, opts)
      return data
    end

    # Gets a list of Lead&#39;s Tasks
    # 
    # @param id A Lead&#39;s ID
    # @param [Hash] opts the optional parameters
    # @option opts [DateTime] :updated_after_utc Optional, earliest date when task was last updated.
    # @option opts [Integer] :top Optional, maximum number of tasks to return.
    # @option opts [Integer] :skip Optional, number of tasks to skip.
    # @option opts [BOOLEAN] :brief true if only top level properties needs to be returned.
    # @option opts [BOOLEAN] :count_total true if total number of records should be returned in the response headers.
    # @return [Array<(Array<APITask>, Fixnum, Hash)>] Array<APITask> data, response status code and response headers
    def get_tasks_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LeadsApi#get_tasks ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling get_tasks" if id.nil?
      
      # resource path
      path = "/Leads/{id}/Tasks".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'updated_after_utc'] = opts[:'updated_after_utc'] if opts[:'updated_after_utc']
      query_params[:'top'] = opts[:'top'] if opts[:'top']
      query_params[:'skip'] = opts[:'skip'] if opts[:'skip']
      query_params[:'brief'] = opts[:'brief'] if opts[:'brief']
      query_params[:'count_total'] = opts[:'count_total'] if opts[:'count_total']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<APITask>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeadsApi#get_tasks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end




