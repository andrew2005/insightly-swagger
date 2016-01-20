require "uri"

module InsightlySwagger
  class OpportunitiesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Gets a list of Opportunities.
    # Simple object graphs (excluding Custom Fields, Tags, etc.) are returned if \&quot;brief=true\&quot; is used in the query string.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :brief Optional, true if response should only contain top level properties of the opportunity.
    # @option opts [Integer] :skip Optional, number of opportunities to skip.
    # @option opts [Integer] :top Optional, maximum number of opportunities to return in the response.
    # @option opts [BOOLEAN] :count_total Optional, true if total number of records should be returned in the response headers.
    # @return [Array<APIOpportunity>]
    def get_opportunities(opts = {})
      data, status_code, headers = get_opportunities_with_http_info(opts)
      return data
    end

    # Gets a list of Opportunities.
    # Simple object graphs (excluding Custom Fields, Tags, etc.) are returned if \&quot;brief=true\&quot; is used in the query string.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :brief Optional, true if response should only contain top level properties of the opportunity.
    # @option opts [Integer] :skip Optional, number of opportunities to skip.
    # @option opts [Integer] :top Optional, maximum number of opportunities to return in the response.
    # @option opts [BOOLEAN] :count_total Optional, true if total number of records should be returned in the response headers.
    # @return [Array<(Array<APIOpportunity>, Fixnum, Hash)>] Array<APIOpportunity> data, response status code and response headers
    def get_opportunities_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OpportunitiesApi#get_opportunities ..."
      end
      
      # resource path
      path = "/Opportunities".sub('{format}','json')

      # query parameters
      query_params = {}
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
        :return_type => 'Array<APIOpportunity>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OpportunitiesApi#get_opportunities\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates an Opportunity
    # A common source of problems when updating opportunities occurs when users omit required fields, or insert             invalid data into a field (for example by referencing an invalid CATEGORY_ID). A good troubleshooting technique             is to create a few opportunities via the web interface, with representative data, links, etc, and then access             these opportunities via the GET method, and inspect the returned object graph.
    # @param api_opportunity An Opportunity (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :brief Optional, true if you wish to do a partial update containing only top level properties of the Opportunity. When true, all sub-collections are ignored.
    # @return [APIOpportunity]
    def update_opportunity(api_opportunity, opts = {})
      data, status_code, headers = update_opportunity_with_http_info(api_opportunity, opts)
      return data
    end

    # Updates an Opportunity
    # A common source of problems when updating opportunities occurs when users omit required fields, or insert             invalid data into a field (for example by referencing an invalid CATEGORY_ID). A good troubleshooting technique             is to create a few opportunities via the web interface, with representative data, links, etc, and then access             these opportunities via the GET method, and inspect the returned object graph.
    # @param api_opportunity An Opportunity (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :brief Optional, true if you wish to do a partial update containing only top level properties of the Opportunity. When true, all sub-collections are ignored.
    # @return [Array<(APIOpportunity, Fixnum, Hash)>] APIOpportunity data, response status code and response headers
    def update_opportunity_with_http_info(api_opportunity, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OpportunitiesApi#update_opportunity ..."
      end
      
      # verify the required parameter 'api_opportunity' is set
      fail "Missing the required parameter 'api_opportunity' when calling update_opportunity" if api_opportunity.nil?
      
      # resource path
      path = "/Opportunities".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(api_opportunity)
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'APIOpportunity')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OpportunitiesApi#update_opportunity\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Adds an Opportunity
    # A common source of problems when creating opportunities occurs when users omit required fields, or insert             invalid data into a field (for example by referencing an invalid CATEGORY_ID). A good troubleshooting technique             is to create a few opportunities via the web interface, with representative data, links, etc, and then access             these opportunities via the GET method, and inspect the returned object graph.
    # @param api_opportunity The Opportunity to add (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [APIOpportunity]
    def add_opportunity(api_opportunity, opts = {})
      data, status_code, headers = add_opportunity_with_http_info(api_opportunity, opts)
      return data
    end

    # Adds an Opportunity
    # A common source of problems when creating opportunities occurs when users omit required fields, or insert             invalid data into a field (for example by referencing an invalid CATEGORY_ID). A good troubleshooting technique             is to create a few opportunities via the web interface, with representative data, links, etc, and then access             these opportunities via the GET method, and inspect the returned object graph.
    # @param api_opportunity The Opportunity to add (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [Array<(APIOpportunity, Fixnum, Hash)>] APIOpportunity data, response status code and response headers
    def add_opportunity_with_http_info(api_opportunity, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OpportunitiesApi#add_opportunity ..."
      end
      
      # verify the required parameter 'api_opportunity' is set
      fail "Missing the required parameter 'api_opportunity' when calling add_opportunity" if api_opportunity.nil?
      
      # resource path
      path = "/Opportunities".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(api_opportunity)
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'APIOpportunity')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OpportunitiesApi#add_opportunity\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets a filtered list of Opportunities.
    # Only one optional parameter (excluding brief, top, skip and count_total) can be specified. Simple object graphs (excluding Custom Fields, Tags, etc.) are returned if \&quot;brief=true\&quot; is used in the query string.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :tag Optional, a single tag.
    # @option opts [String] :opportunity_name Optional, opportuinty name.
    # @option opts [String] :opportunity_state Optional, opportunity state.
    # @option opts [Integer] :category_id Optional, category id.
    # @option opts [Integer] :pipeline_id Optional, pipeline id.
    # @option opts [Integer] :stage_id Optional, stage id.
    # @option opts [Integer] :responsible_user_id Optional, responsible user id.
    # @option opts [Integer] :owner_user_id Optional, owner user id.
    # @option opts [DateTime] :forecast_close_date Optional, forecast close date.
    # @option opts [DateTime] :actual_close_date Optional, actual close date.
    # @option opts [DateTime] :updated_after_utc Optional, earliest date when opportunity was last updated.
    # @option opts [BOOLEAN] :brief Optional, true if response should only contain top level properties of the opportunity.
    # @option opts [Integer] :skip Optional, number of opportunities to skip.
    # @option opts [Integer] :top Optional, maximum number of opportunities to return in the response.
    # @option opts [BOOLEAN] :count_total Optional, true if total number of records should be returned in the response headers.
    # @return [Array<APIOpportunity>]
    def get_opportunities_by_search(opts = {})
      data, status_code, headers = get_opportunities_by_search_with_http_info(opts)
      return data
    end

    # Gets a filtered list of Opportunities.
    # Only one optional parameter (excluding brief, top, skip and count_total) can be specified. Simple object graphs (excluding Custom Fields, Tags, etc.) are returned if \&quot;brief=true\&quot; is used in the query string.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :tag Optional, a single tag.
    # @option opts [String] :opportunity_name Optional, opportuinty name.
    # @option opts [String] :opportunity_state Optional, opportunity state.
    # @option opts [Integer] :category_id Optional, category id.
    # @option opts [Integer] :pipeline_id Optional, pipeline id.
    # @option opts [Integer] :stage_id Optional, stage id.
    # @option opts [Integer] :responsible_user_id Optional, responsible user id.
    # @option opts [Integer] :owner_user_id Optional, owner user id.
    # @option opts [DateTime] :forecast_close_date Optional, forecast close date.
    # @option opts [DateTime] :actual_close_date Optional, actual close date.
    # @option opts [DateTime] :updated_after_utc Optional, earliest date when opportunity was last updated.
    # @option opts [BOOLEAN] :brief Optional, true if response should only contain top level properties of the opportunity.
    # @option opts [Integer] :skip Optional, number of opportunities to skip.
    # @option opts [Integer] :top Optional, maximum number of opportunities to return in the response.
    # @option opts [BOOLEAN] :count_total Optional, true if total number of records should be returned in the response headers.
    # @return [Array<(Array<APIOpportunity>, Fixnum, Hash)>] Array<APIOpportunity> data, response status code and response headers
    def get_opportunities_by_search_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OpportunitiesApi#get_opportunities_by_search ..."
      end
      
      # resource path
      path = "/Opportunities/Search".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'tag'] = opts[:'tag'] if opts[:'tag']
      query_params[:'opportunity_name'] = opts[:'opportunity_name'] if opts[:'opportunity_name']
      query_params[:'opportunity_state'] = opts[:'opportunity_state'] if opts[:'opportunity_state']
      query_params[:'category_id'] = opts[:'category_id'] if opts[:'category_id']
      query_params[:'pipeline_id'] = opts[:'pipeline_id'] if opts[:'pipeline_id']
      query_params[:'stage_id'] = opts[:'stage_id'] if opts[:'stage_id']
      query_params[:'responsible_user_id'] = opts[:'responsible_user_id'] if opts[:'responsible_user_id']
      query_params[:'owner_user_id'] = opts[:'owner_user_id'] if opts[:'owner_user_id']
      query_params[:'forecast_close_date'] = opts[:'forecast_close_date'] if opts[:'forecast_close_date']
      query_params[:'actual_close_date'] = opts[:'actual_close_date'] if opts[:'actual_close_date']
      query_params[:'updated_after_utc'] = opts[:'updated_after_utc'] if opts[:'updated_after_utc']
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
        :return_type => 'Array<APIOpportunity>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OpportunitiesApi#get_opportunities_by_search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets an Opportunity
    # Returns the Opportunity object&#39;s full graph. Prior to attempting POST and PUT operations,             we recommend using this method to fetch an existing object and make incremental changes to it.
    # @param id An Opportunity&#39;s ID
    # @param [Hash] opts the optional parameters
    # @return [APIOpportunity]
    def get_opportunity(id, opts = {})
      data, status_code, headers = get_opportunity_with_http_info(id, opts)
      return data
    end

    # Gets an Opportunity
    # Returns the Opportunity object&#39;s full graph. Prior to attempting POST and PUT operations,             we recommend using this method to fetch an existing object and make incremental changes to it.
    # @param id An Opportunity&#39;s ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(APIOpportunity, Fixnum, Hash)>] APIOpportunity data, response status code and response headers
    def get_opportunity_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OpportunitiesApi#get_opportunity ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling get_opportunity" if id.nil?
      
      # resource path
      path = "/Opportunities/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'APIOpportunity')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OpportunitiesApi#get_opportunity\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes an Opportunity
    # 
    # @param id An Opportunity&#39;s ID
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_opportunity(id, opts = {})
      delete_opportunity_with_http_info(id, opts)
      return nil
    end

    # Deletes an Opportunity
    # 
    # @param id An Opportunity&#39;s ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_opportunity_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OpportunitiesApi#delete_opportunity ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling delete_opportunity" if id.nil?
      
      # resource path
      path = "/Opportunities/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: OpportunitiesApi#delete_opportunity\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Adds an Activity Set to an Opportunity
    # 
    # @param id A Opportunity&#39;s ID
    # @param api_activity_set_assignment The Activity Set Assignment object which contains the configuration information for the Activity Set (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def add_activity_set_assignment(id, api_activity_set_assignment, opts = {})
      add_activity_set_assignment_with_http_info(id, api_activity_set_assignment, opts)
      return nil
    end

    # Adds an Activity Set to an Opportunity
    # 
    # @param id A Opportunity&#39;s ID
    # @param api_activity_set_assignment The Activity Set Assignment object which contains the configuration information for the Activity Set (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def add_activity_set_assignment_with_http_info(id, api_activity_set_assignment, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OpportunitiesApi#add_activity_set_assignment ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling add_activity_set_assignment" if id.nil?
      
      # verify the required parameter 'api_activity_set_assignment' is set
      fail "Missing the required parameter 'api_activity_set_assignment' when calling add_activity_set_assignment" if api_activity_set_assignment.nil?
      
      # resource path
      path = "/Opportunities/{id}/ActivitySetAssignment".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: OpportunitiesApi#add_activity_set_assignment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates a Custom Field
    # 
    # @param id An Opportunity&#39;s ID (OPPORTUNITY_ID)
    # @param api_custom_field The Custom Field to edit (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [APICustomField]
    def update_custom_field(id, api_custom_field, opts = {})
      data, status_code, headers = update_custom_field_with_http_info(id, api_custom_field, opts)
      return data
    end

    # Updates a Custom Field
    # 
    # @param id An Opportunity&#39;s ID (OPPORTUNITY_ID)
    # @param api_custom_field The Custom Field to edit (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [Array<(APICustomField, Fixnum, Hash)>] APICustomField data, response status code and response headers
    def update_custom_field_with_http_info(id, api_custom_field, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OpportunitiesApi#update_custom_field ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling update_custom_field" if id.nil?
      
      # verify the required parameter 'api_custom_field' is set
      fail "Missing the required parameter 'api_custom_field' when calling update_custom_field" if api_custom_field.nil?
      
      # resource path
      path = "/Opportunities/{id}/CustomFields".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: OpportunitiesApi#update_custom_field\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes a Custom Field
    # 
    # @param id An Opportunity&#39;s ID (OPPORTUNITY_ID)
    # @param custom_field_id A Custom Field&#39;s ID (CUSTOM_FIELD_ID)
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_custom_field(id, custom_field_id, opts = {})
      delete_custom_field_with_http_info(id, custom_field_id, opts)
      return nil
    end

    # Deletes a Custom Field
    # 
    # @param id An Opportunity&#39;s ID (OPPORTUNITY_ID)
    # @param custom_field_id A Custom Field&#39;s ID (CUSTOM_FIELD_ID)
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_custom_field_with_http_info(id, custom_field_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OpportunitiesApi#delete_custom_field ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling delete_custom_field" if id.nil?
      
      # verify the required parameter 'custom_field_id' is set
      fail "Missing the required parameter 'custom_field_id' when calling delete_custom_field" if custom_field_id.nil?
      
      # resource path
      path = "/Opportunities/{id}/CustomFields/{customFieldId}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s).sub('{' + 'customFieldId' + '}', custom_field_id.to_s)

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
        @api_client.config.logger.debug "API called: OpportunitiesApi#delete_custom_field\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets a list of Opportunity&#39;s Emails
    # 
    # @param id An Opportunity&#39;s ID
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

    # Gets a list of Opportunity&#39;s Emails
    # 
    # @param id An Opportunity&#39;s ID
    # @param [Hash] opts the optional parameters
    # @option opts [DateTime] :updated_after_utc Optional, earliest date when email was last updated.
    # @option opts [Integer] :top Optional, maximum number of emails to return.
    # @option opts [Integer] :skip Optional, number of emails to skip.
    # @option opts [BOOLEAN] :brief true if only top level properties needs to be returned.
    # @option opts [BOOLEAN] :count_total true if total number of records should be returned in the response headers.
    # @return [Array<(Array<APIEmail>, Fixnum, Hash)>] Array<APIEmail> data, response status code and response headers
    def get_emails_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OpportunitiesApi#get_emails ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling get_emails" if id.nil?
      
      # resource path
      path = "/Opportunities/{id}/Emails".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: OpportunitiesApi#get_emails\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets an Opportunity&#39;s Events
    # 
    # @param id An Opportunity&#39;s ID (OPPORTUNITY_ID)
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

    # Gets an Opportunity&#39;s Events
    # 
    # @param id An Opportunity&#39;s ID (OPPORTUNITY_ID)
    # @param [Hash] opts the optional parameters
    # @option opts [DateTime] :updated_after_utc Optional, earliest date when event was last updated.
    # @option opts [Integer] :top Optional, maximum number of events to return.
    # @option opts [Integer] :skip Optional, number of events to skip.
    # @option opts [BOOLEAN] :brief true if only top level properties needs to be returned.
    # @option opts [BOOLEAN] :count_total true if total number of records should be returned in the response headers.
    # @return [Array<(Array<APICalendarEvent>, Fixnum, Hash)>] Array<APICalendarEvent> data, response status code and response headers
    def get_events_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OpportunitiesApi#get_events ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling get_events" if id.nil?
      
      # resource path
      path = "/Opportunities/{id}/Events".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: OpportunitiesApi#get_events\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets an Opportunity&#39;s File Attachments
    # 
    # @param id An Opportunity&#39;s ID (OPPORTUNITY_ID)
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

    # Gets an Opportunity&#39;s File Attachments
    # 
    # @param id An Opportunity&#39;s ID (OPPORTUNITY_ID)
    # @param [Hash] opts the optional parameters
    # @option opts [DateTime] :updated_after_utc Optional, earliest date when file attachment was last updated.
    # @option opts [Integer] :skip Optional, number of file attachments to skip.
    # @option opts [Integer] :top Optional, maximum number of file attachments to return in the response.
    # @option opts [BOOLEAN] :count_total true if total number of records should be returned in the response headers.
    # @return [Array<(Array<APIFileAttachment>, Fixnum, Hash)>] Array<APIFileAttachment> data, response status code and response headers
    def get_file_attachments_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OpportunitiesApi#get_file_attachments ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling get_file_attachments" if id.nil?
      
      # resource path
      path = "/Opportunities/{id}/FileAttachments".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: OpportunitiesApi#get_file_attachments\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Adds a File Attachment to an Opportunity
    # 
    # @param id An Opportunity&#39;s ID (OPPORTUNITY_ID)
    # @param file This endpoint expects a multi-parm form request. See Stack Overflow or v2.2 Python SDK upload() function for an example of how this is done. Can only upload one file per request.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :file_name The name and extension of the File Attachment
    # @option opts [String] :content_type The MIME type of the File Attachment
    # @option opts [Integer] :file_category_id The category of the File Attachment, if it has been assigned to one
    # @return [APIFileAttachment]
    def add_file_attachment(id, file, opts = {})
      data, status_code, headers = add_file_attachment_with_http_info(id, file, opts)
      return data
    end

    # Adds a File Attachment to an Opportunity
    # 
    # @param id An Opportunity&#39;s ID (OPPORTUNITY_ID)
    # @param file This endpoint expects a multi-parm form request. See Stack Overflow or v2.2 Python SDK upload() function for an example of how this is done. Can only upload one file per request.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :file_name The name and extension of the File Attachment
    # @option opts [String] :content_type The MIME type of the File Attachment
    # @option opts [Integer] :file_category_id The category of the File Attachment, if it has been assigned to one
    # @return [Array<(APIFileAttachment, Fixnum, Hash)>] APIFileAttachment data, response status code and response headers
    def add_file_attachment_with_http_info(id, file, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OpportunitiesApi#add_file_attachment ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling add_file_attachment" if id.nil?
      
      # verify the required parameter 'file' is set
      fail "Missing the required parameter 'file' when calling add_file_attachment" if file.nil?
      
      # resource path
      path = "/Opportunities/{id}/FileAttachments".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: OpportunitiesApi#add_file_attachment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets a Follow record for the Opportunity
    # 
    # @param id An Opportunity&#39;s ID (OPPORTUNITY_ID)
    # @param [Hash] opts the optional parameters
    # @return [APIFollow]
    def get_follow(id, opts = {})
      data, status_code, headers = get_follow_with_http_info(id, opts)
      return data
    end

    # Gets a Follow record for the Opportunity
    # 
    # @param id An Opportunity&#39;s ID (OPPORTUNITY_ID)
    # @param [Hash] opts the optional parameters
    # @return [Array<(APIFollow, Fixnum, Hash)>] APIFollow data, response status code and response headers
    def get_follow_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OpportunitiesApi#get_follow ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling get_follow" if id.nil?
      
      # resource path
      path = "/Opportunities/{id}/Follow".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: OpportunitiesApi#get_follow\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Start following an Opportunity
    # 
    # @param id An Opportunity&#39;s ID (OPPORTUNITY_ID)
    # @param [Hash] opts the optional parameters
    # @return [APIFollow]
    def add_follow(id, opts = {})
      data, status_code, headers = add_follow_with_http_info(id, opts)
      return data
    end

    # Start following an Opportunity
    # 
    # @param id An Opportunity&#39;s ID (OPPORTUNITY_ID)
    # @param [Hash] opts the optional parameters
    # @return [Array<(APIFollow, Fixnum, Hash)>] APIFollow data, response status code and response headers
    def add_follow_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OpportunitiesApi#add_follow ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling add_follow" if id.nil?
      
      # resource path
      path = "/Opportunities/{id}/Follow".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: OpportunitiesApi#add_follow\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Stop following an Opportunity
    # 
    # @param id An Opportunity&#39;s ID (OPPORTUNITY_ID)
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_follow(id, opts = {})
      delete_follow_with_http_info(id, opts)
      return nil
    end

    # Stop following an Opportunity
    # 
    # @param id An Opportunity&#39;s ID (OPPORTUNITY_ID)
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_follow_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OpportunitiesApi#delete_follow ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling delete_follow" if id.nil?
      
      # resource path
      path = "/Opportunities/{id}/Follow".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: OpportunitiesApi#delete_follow\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets an Opportunity&#39;s Image
    # 
    # @param id An Opportunity&#39;s ID (OPPORTUNITY_ID)
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def get_image(id, opts = {})
      get_image_with_http_info(id, opts)
      return nil
    end

    # Gets an Opportunity&#39;s Image
    # 
    # @param id An Opportunity&#39;s ID (OPPORTUNITY_ID)
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def get_image_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OpportunitiesApi#get_image ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling get_image" if id.nil?
      
      # resource path
      path = "/Opportunities/{id}/Image".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: OpportunitiesApi#get_image\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes an Opportunity&#39;s Image
    # 
    # @param id An Opportunity&#39;s ID (OPPORTUNITY_ID)
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_image(id, opts = {})
      delete_image_with_http_info(id, opts)
      return nil
    end

    # Deletes an Opportunity&#39;s Image
    # 
    # @param id An Opportunity&#39;s ID (OPPORTUNITY_ID)
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_image_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OpportunitiesApi#delete_image ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling delete_image" if id.nil?
      
      # resource path
      path = "/Opportunities/{id}/Image".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: OpportunitiesApi#delete_image\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates an Opportunity&#39;s Image
    # This action will replace any existing Image attached to the Opportunity. Image file contents should be sent as binary data in request payload. See v2.2 Python SDK upload_image() function for an example of how this is done.
    # @param id An Opportunity&#39;s ID (OPPORTUNITY_ID)
    # @param filename Name of Image File to be attached to Opportunity
    # @param file File to upload
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def update_image(id, filename, file, opts = {})
      update_image_with_http_info(id, filename, file, opts)
      return nil
    end

    # Updates an Opportunity&#39;s Image
    # This action will replace any existing Image attached to the Opportunity. Image file contents should be sent as binary data in request payload. See v2.2 Python SDK upload_image() function for an example of how this is done.
    # @param id An Opportunity&#39;s ID (OPPORTUNITY_ID)
    # @param filename Name of Image File to be attached to Opportunity
    # @param file File to upload
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_image_with_http_info(id, filename, file, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OpportunitiesApi#update_image ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling update_image" if id.nil?
      
      # verify the required parameter 'filename' is set
      fail "Missing the required parameter 'filename' when calling update_image" if filename.nil?
      
      # verify the required parameter 'file' is set
      fail "Missing the required parameter 'file' when calling update_image" if file.nil?
      
      # resource path
      path = "/Opportunities/{id}/Image/{filename}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s).sub('{' + 'filename' + '}', filename.to_s)

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
        @api_client.config.logger.debug "API called: OpportunitiesApi#update_image\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets the email address to use for linking with the opportunity
    # An email address to use as a maildrop for the Opportunity.
    # @param id An Opportunity&#39;s ID
    # @param [Hash] opts the optional parameters
    # @return [APILinkEmailAddress]
    def get_link_email_address(id, opts = {})
      data, status_code, headers = get_link_email_address_with_http_info(id, opts)
      return data
    end

    # Gets the email address to use for linking with the opportunity
    # An email address to use as a maildrop for the Opportunity.
    # @param id An Opportunity&#39;s ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(APILinkEmailAddress, Fixnum, Hash)>] APILinkEmailAddress data, response status code and response headers
    def get_link_email_address_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OpportunitiesApi#get_link_email_address ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling get_link_email_address" if id.nil?
      
      # resource path
      path = "/Opportunities/{id}/LinkEmailAddress".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'APILinkEmailAddress')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OpportunitiesApi#get_link_email_address\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates a Link
    # 
    # @param id An Opportunity&#39;s ID (OPPORTUNITY_ID)
    # @param api_link The Link to add (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [APILink]
    def update_link(id, api_link, opts = {})
      data, status_code, headers = update_link_with_http_info(id, api_link, opts)
      return data
    end

    # Updates a Link
    # 
    # @param id An Opportunity&#39;s ID (OPPORTUNITY_ID)
    # @param api_link The Link to add (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [Array<(APILink, Fixnum, Hash)>] APILink data, response status code and response headers
    def update_link_with_http_info(id, api_link, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OpportunitiesApi#update_link ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling update_link" if id.nil?
      
      # verify the required parameter 'api_link' is set
      fail "Missing the required parameter 'api_link' when calling update_link" if api_link.nil?
      
      # resource path
      path = "/Opportunities/{id}/Links".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(api_link)
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'APILink')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OpportunitiesApi#update_link\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Adds a Link
    # 
    # @param id An Opportunity&#39;s ID (OPPORTUNITY_ID)
    # @param api_link The Link to add (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [APILink]
    def add_link(id, api_link, opts = {})
      data, status_code, headers = add_link_with_http_info(id, api_link, opts)
      return data
    end

    # Adds a Link
    # 
    # @param id An Opportunity&#39;s ID (OPPORTUNITY_ID)
    # @param api_link The Link to add (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [Array<(APILink, Fixnum, Hash)>] APILink data, response status code and response headers
    def add_link_with_http_info(id, api_link, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OpportunitiesApi#add_link ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling add_link" if id.nil?
      
      # verify the required parameter 'api_link' is set
      fail "Missing the required parameter 'api_link' when calling add_link" if api_link.nil?
      
      # resource path
      path = "/Opportunities/{id}/Links".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(api_link)
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'APILink')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OpportunitiesApi#add_link\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes a Link
    # 
    # @param id An Opportunity&#39;s ID (OPPORTUNITY_ID)
    # @param link_id A Link&#39;s ID (LINK_ID)
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_link(id, link_id, opts = {})
      delete_link_with_http_info(id, link_id, opts)
      return nil
    end

    # Deletes a Link
    # 
    # @param id An Opportunity&#39;s ID (OPPORTUNITY_ID)
    # @param link_id A Link&#39;s ID (LINK_ID)
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_link_with_http_info(id, link_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OpportunitiesApi#delete_link ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling delete_link" if id.nil?
      
      # verify the required parameter 'link_id' is set
      fail "Missing the required parameter 'link_id' when calling delete_link" if link_id.nil?
      
      # resource path
      path = "/Opportunities/{id}/Links/{linkId}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s).sub('{' + 'linkId' + '}', link_id.to_s)

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
        @api_client.config.logger.debug "API called: OpportunitiesApi#delete_link\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets an Opportunity&#39;s Notes
    # 
    # @param id An Opportunity&#39;s ID (OPPORRTUNITY_ID)
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

    # Gets an Opportunity&#39;s Notes
    # 
    # @param id An Opportunity&#39;s ID (OPPORRTUNITY_ID)
    # @param [Hash] opts the optional parameters
    # @option opts [DateTime] :updated_after_utc Optional, earliest date when note was last updated.
    # @option opts [Integer] :top Optional, maximum number of notes to return.
    # @option opts [Integer] :skip Optional, number of notes to skip.
    # @option opts [BOOLEAN] :brief true if only top level properties needs to be returned.
    # @option opts [BOOLEAN] :count_total true if total number of records should be returned in the response headers.
    # @return [Array<(Array<APINote>, Fixnum, Hash)>] Array<APINote> data, response status code and response headers
    def get_notes_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OpportunitiesApi#get_notes ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling get_notes" if id.nil?
      
      # resource path
      path = "/Opportunities/{id}/Notes".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: OpportunitiesApi#get_notes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Adds a Note to an Opportunity.
    # 
    # @param id An Opportunity&#39;s ID (OPPORTUNITY_ID)
    # @param api_note The Note to add (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [APINote]
    def add_note(id, api_note, opts = {})
      data, status_code, headers = add_note_with_http_info(id, api_note, opts)
      return data
    end

    # Adds a Note to an Opportunity.
    # 
    # @param id An Opportunity&#39;s ID (OPPORTUNITY_ID)
    # @param api_note The Note to add (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [Array<(APINote, Fixnum, Hash)>] APINote data, response status code and response headers
    def add_note_with_http_info(id, api_note, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OpportunitiesApi#add_note ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling add_note" if id.nil?
      
      # verify the required parameter 'api_note' is set
      fail "Missing the required parameter 'api_note' when calling add_note" if api_note.nil?
      
      # resource path
      path = "/Opportunities/{id}/Notes".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: OpportunitiesApi#add_note\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Changes current pipeline for the opportunity.
    # 
    # @param id An Opportunity&#39;s ID
    # @param api_pipeline_change Pipeline change parameters (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [APIOpportunity]
    def update_pipeline(id, api_pipeline_change, opts = {})
      data, status_code, headers = update_pipeline_with_http_info(id, api_pipeline_change, opts)
      return data
    end

    # Changes current pipeline for the opportunity.
    # 
    # @param id An Opportunity&#39;s ID
    # @param api_pipeline_change Pipeline change parameters (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [Array<(APIOpportunity, Fixnum, Hash)>] APIOpportunity data, response status code and response headers
    def update_pipeline_with_http_info(id, api_pipeline_change, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OpportunitiesApi#update_pipeline ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling update_pipeline" if id.nil?
      
      # verify the required parameter 'api_pipeline_change' is set
      fail "Missing the required parameter 'api_pipeline_change' when calling update_pipeline" if api_pipeline_change.nil?
      
      # resource path
      path = "/Opportunities/{id}/Pipeline".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(api_pipeline_change)
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'APIOpportunity')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OpportunitiesApi#update_pipeline\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Clears pipeline for the opportunity.
    # 
    # @param id An Opportunity&#39;s ID
    # @param [Hash] opts the optional parameters
    # @return [APIOpportunity]
    def delete_pipeline(id, opts = {})
      data, status_code, headers = delete_pipeline_with_http_info(id, opts)
      return data
    end

    # Clears pipeline for the opportunity.
    # 
    # @param id An Opportunity&#39;s ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(APIOpportunity, Fixnum, Hash)>] APIOpportunity data, response status code and response headers
    def delete_pipeline_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OpportunitiesApi#delete_pipeline ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling delete_pipeline" if id.nil?
      
      # resource path
      path = "/Opportunities/{id}/Pipeline".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        :auth_names => auth_names,
        :return_type => 'APIOpportunity')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OpportunitiesApi#delete_pipeline\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Changes current pipeline stage for the opportunity.
    # 
    # @param id An Opportunity&#39;s ID
    # @param api_stage_change Pipeline stage change parameters (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [APIOpportunity]
    def update_pipeline_stage(id, api_stage_change, opts = {})
      data, status_code, headers = update_pipeline_stage_with_http_info(id, api_stage_change, opts)
      return data
    end

    # Changes current pipeline stage for the opportunity.
    # 
    # @param id An Opportunity&#39;s ID
    # @param api_stage_change Pipeline stage change parameters (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [Array<(APIOpportunity, Fixnum, Hash)>] APIOpportunity data, response status code and response headers
    def update_pipeline_stage_with_http_info(id, api_stage_change, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OpportunitiesApi#update_pipeline_stage ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling update_pipeline_stage" if id.nil?
      
      # verify the required parameter 'api_stage_change' is set
      fail "Missing the required parameter 'api_stage_change' when calling update_pipeline_stage" if api_stage_change.nil?
      
      # resource path
      path = "/Opportunities/{id}/PipelineStage".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(api_stage_change)
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'APIOpportunity')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OpportunitiesApi#update_pipeline_stage\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates an Opportunity State
    # 
    # @param id Opportunitie&#39;s ID
    # @param api_opportunity_state A Opportunity State (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [APIOpportunity]
    def update_opportunity_state(id, api_opportunity_state, opts = {})
      data, status_code, headers = update_opportunity_state_with_http_info(id, api_opportunity_state, opts)
      return data
    end

    # Updates an Opportunity State
    # 
    # @param id Opportunitie&#39;s ID
    # @param api_opportunity_state A Opportunity State (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [Array<(APIOpportunity, Fixnum, Hash)>] APIOpportunity data, response status code and response headers
    def update_opportunity_state_with_http_info(id, api_opportunity_state, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OpportunitiesApi#update_opportunity_state ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling update_opportunity_state" if id.nil?
      
      # verify the required parameter 'api_opportunity_state' is set
      fail "Missing the required parameter 'api_opportunity_state' when calling update_opportunity_state" if api_opportunity_state.nil?
      
      # resource path
      path = "/Opportunities/{id}/State".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(api_opportunity_state)
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'APIOpportunity')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OpportunitiesApi#update_opportunity_state\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets the history of States and Reasons for an Opportunity.
    # 
    # @param id An Opportunity&#39;s ID
    # @param [Hash] opts the optional parameters
    # @return [Array<APIOpportunityState>]
    def get_state_history(id, opts = {})
      data, status_code, headers = get_state_history_with_http_info(id, opts)
      return data
    end

    # Gets the history of States and Reasons for an Opportunity.
    # 
    # @param id An Opportunity&#39;s ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<APIOpportunityState>, Fixnum, Hash)>] Array<APIOpportunityState> data, response status code and response headers
    def get_state_history_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OpportunitiesApi#get_state_history ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling get_state_history" if id.nil?
      
      # resource path
      path = "/Opportunities/{id}/StateHistory".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Array<APIOpportunityState>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OpportunitiesApi#get_state_history\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Adds a Tag for an Opportunity
    # 
    # @param id An Opportunity&#39;s ID (OPPORTUNITY_ID)
    # @param api_tag The Tag to add (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [APITag]
    def add_tag(id, api_tag, opts = {})
      data, status_code, headers = add_tag_with_http_info(id, api_tag, opts)
      return data
    end

    # Adds a Tag for an Opportunity
    # 
    # @param id An Opportunity&#39;s ID (OPPORTUNITY_ID)
    # @param api_tag The Tag to add (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [Array<(APITag, Fixnum, Hash)>] APITag data, response status code and response headers
    def add_tag_with_http_info(id, api_tag, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OpportunitiesApi#add_tag ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling add_tag" if id.nil?
      
      # verify the required parameter 'api_tag' is set
      fail "Missing the required parameter 'api_tag' when calling add_tag" if api_tag.nil?
      
      # resource path
      path = "/Opportunities/{id}/Tags".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: OpportunitiesApi#add_tag\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes a Tag from an Opportunity
    # 
    # @param id An Opportunity&#39;s ID (OPPORTUNITY_ID)
    # @param tag_name A Tag&#39;s name
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_tag(id, tag_name, opts = {})
      delete_tag_with_http_info(id, tag_name, opts)
      return nil
    end

    # Deletes a Tag from an Opportunity
    # 
    # @param id An Opportunity&#39;s ID (OPPORTUNITY_ID)
    # @param tag_name A Tag&#39;s name
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_tag_with_http_info(id, tag_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OpportunitiesApi#delete_tag ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling delete_tag" if id.nil?
      
      # verify the required parameter 'tag_name' is set
      fail "Missing the required parameter 'tag_name' when calling delete_tag" if tag_name.nil?
      
      # resource path
      path = "/Opportunities/{id}/Tags/{tagName}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s).sub('{' + 'tagName' + '}', tag_name.to_s)

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
        @api_client.config.logger.debug "API called: OpportunitiesApi#delete_tag\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets a list of Opportunity&#39;s Tasks
    # 
    # @param id An Opportunity&#39;s ID
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

    # Gets a list of Opportunity&#39;s Tasks
    # 
    # @param id An Opportunity&#39;s ID
    # @param [Hash] opts the optional parameters
    # @option opts [DateTime] :updated_after_utc Optional, earliest date when task was last updated.
    # @option opts [Integer] :top Optional, maximum number of tasks to return.
    # @option opts [Integer] :skip Optional, number of tasks to skip.
    # @option opts [BOOLEAN] :brief true if only top level properties needs to be returned.
    # @option opts [BOOLEAN] :count_total true if total number of records should be returned in the response headers.
    # @return [Array<(Array<APITask>, Fixnum, Hash)>] Array<APITask> data, response status code and response headers
    def get_tasks_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OpportunitiesApi#get_tasks ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling get_tasks" if id.nil?
      
      # resource path
      path = "/Opportunities/{id}/Tasks".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: OpportunitiesApi#get_tasks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end




