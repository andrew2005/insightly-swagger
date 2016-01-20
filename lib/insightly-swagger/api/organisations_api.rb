require "uri"

module InsightlySwagger
  class OrganisationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Gets a list of Organisations.
    # Simple object graphs (excluding ADDRESSES, CONTACTINFOS, etc.) are returned if \&quot;brief=true\&quot; is used in the query string.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :brief Optional, true if response should only contain top level properties of the organisation.
    # @option opts [Integer] :skip Optional, number of organisations to skip.
    # @option opts [Integer] :top Optional, maximum number of organisations to return in the response.
    # @option opts [BOOLEAN] :count_total Optional, true if total number of records should be returned in the response headers.
    # @return [Array<APIOrganisation>]
    def get_organisations(opts = {})
      data, status_code, headers = get_organisations_with_http_info(opts)
      return data
    end

    # Gets a list of Organisations.
    # Simple object graphs (excluding ADDRESSES, CONTACTINFOS, etc.) are returned if \&quot;brief=true\&quot; is used in the query string.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :brief Optional, true if response should only contain top level properties of the organisation.
    # @option opts [Integer] :skip Optional, number of organisations to skip.
    # @option opts [Integer] :top Optional, maximum number of organisations to return in the response.
    # @option opts [BOOLEAN] :count_total Optional, true if total number of records should be returned in the response headers.
    # @return [Array<(Array<APIOrganisation>, Fixnum, Hash)>] Array<APIOrganisation> data, response status code and response headers
    def get_organisations_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganisationsApi#get_organisations ..."
      end
      
      # resource path
      path = "/Organisations".sub('{format}','json')

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
        :return_type => 'Array<APIOrganisation>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganisationsApi#get_organisations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates an Organisation
    # If you have trouble updating an organisation, try accessing the organisation via the GET request to inspect its fields and sub-elements. A common source of            problems with write/update requests occurs when users either omit required fields, or insert invalid data into a field (for example, by referring a            CATEGORY_ID or LINK_ID which does not exist.
    # @param api_organisation An Organisation (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :brief Optional, true if you wish to do a partial update containing only top level properties of the Organisation. When true, all sub-collections are ignored.
    # @return [APIOrganisation]
    def update_organisation(api_organisation, opts = {})
      data, status_code, headers = update_organisation_with_http_info(api_organisation, opts)
      return data
    end

    # Updates an Organisation
    # If you have trouble updating an organisation, try accessing the organisation via the GET request to inspect its fields and sub-elements. A common source of            problems with write/update requests occurs when users either omit required fields, or insert invalid data into a field (for example, by referring a            CATEGORY_ID or LINK_ID which does not exist.
    # @param api_organisation An Organisation (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :brief Optional, true if you wish to do a partial update containing only top level properties of the Organisation. When true, all sub-collections are ignored.
    # @return [Array<(APIOrganisation, Fixnum, Hash)>] APIOrganisation data, response status code and response headers
    def update_organisation_with_http_info(api_organisation, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganisationsApi#update_organisation ..."
      end
      
      # verify the required parameter 'api_organisation' is set
      fail "Missing the required parameter 'api_organisation' when calling update_organisation" if api_organisation.nil?
      
      # resource path
      path = "/Organisations".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(api_organisation)
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'APIOrganisation')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganisationsApi#update_organisation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Adds an Organisation
    # If you have trouble with creating an organisation, try creating organisations via the web interface, and then access those organisations via the API. This way you            can see examples of the fields and sub-elements attached to the object. A common source of problems during write/update request is caused when users omit            required fields, or insert invalid data in a field (e.g. reference a CATEGORY_ID that does not exist in the user&#39;s Insightly instance.
    # @param api_organisation The Organisation to add (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [APIOrganisation]
    def add_organisation(api_organisation, opts = {})
      data, status_code, headers = add_organisation_with_http_info(api_organisation, opts)
      return data
    end

    # Adds an Organisation
    # If you have trouble with creating an organisation, try creating organisations via the web interface, and then access those organisations via the API. This way you            can see examples of the fields and sub-elements attached to the object. A common source of problems during write/update request is caused when users omit            required fields, or insert invalid data in a field (e.g. reference a CATEGORY_ID that does not exist in the user&#39;s Insightly instance.
    # @param api_organisation The Organisation to add (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [Array<(APIOrganisation, Fixnum, Hash)>] APIOrganisation data, response status code and response headers
    def add_organisation_with_http_info(api_organisation, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganisationsApi#add_organisation ..."
      end
      
      # verify the required parameter 'api_organisation' is set
      fail "Missing the required parameter 'api_organisation' when calling add_organisation" if api_organisation.nil?
      
      # resource path
      path = "/Organisations".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(api_organisation)
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'APIOrganisation')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganisationsApi#add_organisation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets a filtered list of Organisations.
    # Only one optional parameter (excluding brief, top, skip and count_total) can be specified. Simple object graphs (excluding ADDRESSES, CONTACTINFOS, etc.) are returned if \&quot;brief=true\&quot; is used in the query string.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :email Optional, email address.
    # @option opts [String] :email_domain Optional, email domain.
    # @option opts [String] :tag Optional, a single tag.
    # @option opts [String] :phone_number Optional, phone number.
    # @option opts [String] :organisation_name Optional, name of the organisation.
    # @option opts [String] :city Optional, name of the city from organisation address.
    # @option opts [String] :state Optional, state from the organisation address.
    # @option opts [String] :postcode Optional, postal code from the organisation address.
    # @option opts [String] :country Optional, name of the country from organisation address.
    # @option opts [DateTime] :updated_after_utc Optional, earliest date when organisation was last updated.
    # @option opts [BOOLEAN] :brief Optional, true if response should only contain top level properties of the organisation.
    # @option opts [Integer] :skip Optional, number of organisations to skip.
    # @option opts [Integer] :top Optional, maximum number of organisations to return in the response.
    # @option opts [BOOLEAN] :count_total Optional, true if total number of records should be returned in the response headers.
    # @return [Array<APIOrganisation>]
    def get_organisations_by_search(opts = {})
      data, status_code, headers = get_organisations_by_search_with_http_info(opts)
      return data
    end

    # Gets a filtered list of Organisations.
    # Only one optional parameter (excluding brief, top, skip and count_total) can be specified. Simple object graphs (excluding ADDRESSES, CONTACTINFOS, etc.) are returned if \&quot;brief=true\&quot; is used in the query string.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :email Optional, email address.
    # @option opts [String] :email_domain Optional, email domain.
    # @option opts [String] :tag Optional, a single tag.
    # @option opts [String] :phone_number Optional, phone number.
    # @option opts [String] :organisation_name Optional, name of the organisation.
    # @option opts [String] :city Optional, name of the city from organisation address.
    # @option opts [String] :state Optional, state from the organisation address.
    # @option opts [String] :postcode Optional, postal code from the organisation address.
    # @option opts [String] :country Optional, name of the country from organisation address.
    # @option opts [DateTime] :updated_after_utc Optional, earliest date when organisation was last updated.
    # @option opts [BOOLEAN] :brief Optional, true if response should only contain top level properties of the organisation.
    # @option opts [Integer] :skip Optional, number of organisations to skip.
    # @option opts [Integer] :top Optional, maximum number of organisations to return in the response.
    # @option opts [BOOLEAN] :count_total Optional, true if total number of records should be returned in the response headers.
    # @return [Array<(Array<APIOrganisation>, Fixnum, Hash)>] Array<APIOrganisation> data, response status code and response headers
    def get_organisations_by_search_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganisationsApi#get_organisations_by_search ..."
      end
      
      # resource path
      path = "/Organisations/Search".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'email'] = opts[:'email'] if opts[:'email']
      query_params[:'email_domain'] = opts[:'email_domain'] if opts[:'email_domain']
      query_params[:'tag'] = opts[:'tag'] if opts[:'tag']
      query_params[:'phone_number'] = opts[:'phone_number'] if opts[:'phone_number']
      query_params[:'organisation_name'] = opts[:'organisation_name'] if opts[:'organisation_name']
      query_params[:'city'] = opts[:'city'] if opts[:'city']
      query_params[:'state'] = opts[:'state'] if opts[:'state']
      query_params[:'postcode'] = opts[:'postcode'] if opts[:'postcode']
      query_params[:'country'] = opts[:'country'] if opts[:'country']
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
        :return_type => 'Array<APIOrganisation>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganisationsApi#get_organisations_by_search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets an Organisation
    # 
    # @param id An Organisation&#39;s ID
    # @param [Hash] opts the optional parameters
    # @return [APIOrganisation]
    def get_organisation(id, opts = {})
      data, status_code, headers = get_organisation_with_http_info(id, opts)
      return data
    end

    # Gets an Organisation
    # 
    # @param id An Organisation&#39;s ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(APIOrganisation, Fixnum, Hash)>] APIOrganisation data, response status code and response headers
    def get_organisation_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganisationsApi#get_organisation ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling get_organisation" if id.nil?
      
      # resource path
      path = "/Organisations/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'APIOrganisation')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganisationsApi#get_organisation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes an Organisation
    # 
    # @param id An Organisation&#39;s ID
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_organisation(id, opts = {})
      delete_organisation_with_http_info(id, opts)
      return nil
    end

    # Deletes an Organisation
    # 
    # @param id An Organisation&#39;s ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_organisation_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganisationsApi#delete_organisation ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling delete_organisation" if id.nil?
      
      # resource path
      path = "/Organisations/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: OrganisationsApi#delete_organisation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Adds an Activity Set to an Organisation
    # 
    # @param id A Organisaton&#39;s ID
    # @param api_activity_set_assignment The Activity Set Assignment object which contains the configuration information for the Activity Set
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def add_activity_set_assignment(id, api_activity_set_assignment, opts = {})
      add_activity_set_assignment_with_http_info(id, api_activity_set_assignment, opts)
      return nil
    end

    # Adds an Activity Set to an Organisation
    # 
    # @param id A Organisaton&#39;s ID
    # @param api_activity_set_assignment The Activity Set Assignment object which contains the configuration information for the Activity Set
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def add_activity_set_assignment_with_http_info(id, api_activity_set_assignment, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganisationsApi#add_activity_set_assignment ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling add_activity_set_assignment" if id.nil?
      
      # verify the required parameter 'api_activity_set_assignment' is set
      fail "Missing the required parameter 'api_activity_set_assignment' when calling add_activity_set_assignment" if api_activity_set_assignment.nil?
      
      # resource path
      path = "/Organisations/{id}/ActivitySetAssignment".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: OrganisationsApi#add_activity_set_assignment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates an Address
    # 
    # @param id An Organisation&#39;s ID (ORGANISATION_ID)
    # @param api_address The Address to update (just include the JSON object in the request body)
    # @param [Hash] opts the optional parameters
    # @return [APIAddress]
    def update_address(id, api_address, opts = {})
      data, status_code, headers = update_address_with_http_info(id, api_address, opts)
      return data
    end

    # Updates an Address
    # 
    # @param id An Organisation&#39;s ID (ORGANISATION_ID)
    # @param api_address The Address to update (just include the JSON object in the request body)
    # @param [Hash] opts the optional parameters
    # @return [Array<(APIAddress, Fixnum, Hash)>] APIAddress data, response status code and response headers
    def update_address_with_http_info(id, api_address, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganisationsApi#update_address ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling update_address" if id.nil?
      
      # verify the required parameter 'api_address' is set
      fail "Missing the required parameter 'api_address' when calling update_address" if api_address.nil?
      
      # resource path
      path = "/Organisations/{id}/Addresses".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(api_address)
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'APIAddress')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganisationsApi#update_address\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Adds an Address
    # 
    # @param id An Organisation&#39;s ID (ORGANISATION_ID)
    # @param api_address The Address to add (just include the JSON object in the request body)
    # @param [Hash] opts the optional parameters
    # @return [APIAddress]
    def add_address(id, api_address, opts = {})
      data, status_code, headers = add_address_with_http_info(id, api_address, opts)
      return data
    end

    # Adds an Address
    # 
    # @param id An Organisation&#39;s ID (ORGANISATION_ID)
    # @param api_address The Address to add (just include the JSON object in the request body)
    # @param [Hash] opts the optional parameters
    # @return [Array<(APIAddress, Fixnum, Hash)>] APIAddress data, response status code and response headers
    def add_address_with_http_info(id, api_address, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganisationsApi#add_address ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling add_address" if id.nil?
      
      # verify the required parameter 'api_address' is set
      fail "Missing the required parameter 'api_address' when calling add_address" if api_address.nil?
      
      # resource path
      path = "/Organisations/{id}/Addresses".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(api_address)
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'APIAddress')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganisationsApi#add_address\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes an Address
    # 
    # @param id An Organisation&#39;s ID (ORGANISATION_ID)
    # @param address_id An Address&#39; ID (ADDRESS_ID)
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_address(id, address_id, opts = {})
      delete_address_with_http_info(id, address_id, opts)
      return nil
    end

    # Deletes an Address
    # 
    # @param id An Organisation&#39;s ID (ORGANISATION_ID)
    # @param address_id An Address&#39; ID (ADDRESS_ID)
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_address_with_http_info(id, address_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganisationsApi#delete_address ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling delete_address" if id.nil?
      
      # verify the required parameter 'address_id' is set
      fail "Missing the required parameter 'address_id' when calling delete_address" if address_id.nil?
      
      # resource path
      path = "/Organisations/{id}/Addresses/{addressId}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s).sub('{' + 'addressId' + '}', address_id.to_s)

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
        @api_client.config.logger.debug "API called: OrganisationsApi#delete_address\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates a Contact Info
    # 
    # @param id An Organisation&#39;s ID (ORGANISATION_ID)
    # @param api_contact_info The Contact Info to add (just include the JSON object in the request body)
    # @param [Hash] opts the optional parameters
    # @return [APIContactInfo]
    def update_contact_info(id, api_contact_info, opts = {})
      data, status_code, headers = update_contact_info_with_http_info(id, api_contact_info, opts)
      return data
    end

    # Updates a Contact Info
    # 
    # @param id An Organisation&#39;s ID (ORGANISATION_ID)
    # @param api_contact_info The Contact Info to add (just include the JSON object in the request body)
    # @param [Hash] opts the optional parameters
    # @return [Array<(APIContactInfo, Fixnum, Hash)>] APIContactInfo data, response status code and response headers
    def update_contact_info_with_http_info(id, api_contact_info, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganisationsApi#update_contact_info ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling update_contact_info" if id.nil?
      
      # verify the required parameter 'api_contact_info' is set
      fail "Missing the required parameter 'api_contact_info' when calling update_contact_info" if api_contact_info.nil?
      
      # resource path
      path = "/Organisations/{id}/ContactInfos".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(api_contact_info)
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'APIContactInfo')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganisationsApi#update_contact_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Adds a Contact Info
    # 
    # @param id An Organisation&#39;s ID (ORGANISATION_ID)
    # @param api_contact_info The Contact Info to add (just include the JSON object in the request body)
    # @param [Hash] opts the optional parameters
    # @return [APIContactInfo]
    def add_contact_info(id, api_contact_info, opts = {})
      data, status_code, headers = add_contact_info_with_http_info(id, api_contact_info, opts)
      return data
    end

    # Adds a Contact Info
    # 
    # @param id An Organisation&#39;s ID (ORGANISATION_ID)
    # @param api_contact_info The Contact Info to add (just include the JSON object in the request body)
    # @param [Hash] opts the optional parameters
    # @return [Array<(APIContactInfo, Fixnum, Hash)>] APIContactInfo data, response status code and response headers
    def add_contact_info_with_http_info(id, api_contact_info, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganisationsApi#add_contact_info ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling add_contact_info" if id.nil?
      
      # verify the required parameter 'api_contact_info' is set
      fail "Missing the required parameter 'api_contact_info' when calling add_contact_info" if api_contact_info.nil?
      
      # resource path
      path = "/Organisations/{id}/ContactInfos".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(api_contact_info)
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'APIContactInfo')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganisationsApi#add_contact_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes a Contact Info
    # 
    # @param id An Organisation&#39;s ID (ORGANISATION_ID)
    # @param contact_info_id A Contact Info&#39;s ID (CONTACT_INFO_ID)
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_contact_info(id, contact_info_id, opts = {})
      delete_contact_info_with_http_info(id, contact_info_id, opts)
      return nil
    end

    # Deletes a Contact Info
    # 
    # @param id An Organisation&#39;s ID (ORGANISATION_ID)
    # @param contact_info_id A Contact Info&#39;s ID (CONTACT_INFO_ID)
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_contact_info_with_http_info(id, contact_info_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganisationsApi#delete_contact_info ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling delete_contact_info" if id.nil?
      
      # verify the required parameter 'contact_info_id' is set
      fail "Missing the required parameter 'contact_info_id' when calling delete_contact_info" if contact_info_id.nil?
      
      # resource path
      path = "/Organisations/{id}/ContactInfos/{contactInfoId}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s).sub('{' + 'contactInfoId' + '}', contact_info_id.to_s)

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
        @api_client.config.logger.debug "API called: OrganisationsApi#delete_contact_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates a Custom Field
    # 
    # @param id An Organisation&#39;s ID (ORGANISATION_ID)
    # @param api_custom_field The Custom Field to edit (just include the JSON object in the request body)
    # @param [Hash] opts the optional parameters
    # @return [APICustomField]
    def update_custom_field(id, api_custom_field, opts = {})
      data, status_code, headers = update_custom_field_with_http_info(id, api_custom_field, opts)
      return data
    end

    # Updates a Custom Field
    # 
    # @param id An Organisation&#39;s ID (ORGANISATION_ID)
    # @param api_custom_field The Custom Field to edit (just include the JSON object in the request body)
    # @param [Hash] opts the optional parameters
    # @return [Array<(APICustomField, Fixnum, Hash)>] APICustomField data, response status code and response headers
    def update_custom_field_with_http_info(id, api_custom_field, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganisationsApi#update_custom_field ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling update_custom_field" if id.nil?
      
      # verify the required parameter 'api_custom_field' is set
      fail "Missing the required parameter 'api_custom_field' when calling update_custom_field" if api_custom_field.nil?
      
      # resource path
      path = "/Organisations/{id}/CustomFields".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: OrganisationsApi#update_custom_field\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes a Custom Field
    # 
    # @param id An Organisation&#39;s ID (ORGANISATION_ID)
    # @param custom_field_id A Custom Field&#39;s ID (CUSTOM_FIELD_ID)
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_custom_field(id, custom_field_id, opts = {})
      delete_custom_field_with_http_info(id, custom_field_id, opts)
      return nil
    end

    # Deletes a Custom Field
    # 
    # @param id An Organisation&#39;s ID (ORGANISATION_ID)
    # @param custom_field_id A Custom Field&#39;s ID (CUSTOM_FIELD_ID)
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_custom_field_with_http_info(id, custom_field_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganisationsApi#delete_custom_field ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling delete_custom_field" if id.nil?
      
      # verify the required parameter 'custom_field_id' is set
      fail "Missing the required parameter 'custom_field_id' when calling delete_custom_field" if custom_field_id.nil?
      
      # resource path
      path = "/Organisations/{id}/CustomFields/{customFieldId}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s).sub('{' + 'customFieldId' + '}', custom_field_id.to_s)

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
        @api_client.config.logger.debug "API called: OrganisationsApi#delete_custom_field\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates an Organisation Date
    # 
    # @param id An Organisation&#39;s ID (ORGANISATION_ID)
    # @param api_date The Organisation Date to add (just include the JSON object in the request body)
    # @param [Hash] opts the optional parameters
    # @return [APIOrganisationDate]
    def update_date(id, api_date, opts = {})
      data, status_code, headers = update_date_with_http_info(id, api_date, opts)
      return data
    end

    # Updates an Organisation Date
    # 
    # @param id An Organisation&#39;s ID (ORGANISATION_ID)
    # @param api_date The Organisation Date to add (just include the JSON object in the request body)
    # @param [Hash] opts the optional parameters
    # @return [Array<(APIOrganisationDate, Fixnum, Hash)>] APIOrganisationDate data, response status code and response headers
    def update_date_with_http_info(id, api_date, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganisationsApi#update_date ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling update_date" if id.nil?
      
      # verify the required parameter 'api_date' is set
      fail "Missing the required parameter 'api_date' when calling update_date" if api_date.nil?
      
      # resource path
      path = "/Organisations/{id}/Dates".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(api_date)
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'APIOrganisationDate')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganisationsApi#update_date\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Adds an Organisation Date
    # 
    # @param id An Organisation&#39;s ID (ORGANISATION_ID)
    # @param api_date The Organisation Date to add (just include the JSON object in the request body)
    # @param [Hash] opts the optional parameters
    # @return [APIOrganisationDate]
    def add_date(id, api_date, opts = {})
      data, status_code, headers = add_date_with_http_info(id, api_date, opts)
      return data
    end

    # Adds an Organisation Date
    # 
    # @param id An Organisation&#39;s ID (ORGANISATION_ID)
    # @param api_date The Organisation Date to add (just include the JSON object in the request body)
    # @param [Hash] opts the optional parameters
    # @return [Array<(APIOrganisationDate, Fixnum, Hash)>] APIOrganisationDate data, response status code and response headers
    def add_date_with_http_info(id, api_date, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganisationsApi#add_date ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling add_date" if id.nil?
      
      # verify the required parameter 'api_date' is set
      fail "Missing the required parameter 'api_date' when calling add_date" if api_date.nil?
      
      # resource path
      path = "/Organisations/{id}/Dates".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(api_date)
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'APIOrganisationDate')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganisationsApi#add_date\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes an Organisation Date
    # 
    # @param id An Organisation&#39;s ID (ORGANISATION_ID)
    # @param date_id An Organisation Date&#39;s ID (DATE_ID)
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_date(id, date_id, opts = {})
      delete_date_with_http_info(id, date_id, opts)
      return nil
    end

    # Deletes an Organisation Date
    # 
    # @param id An Organisation&#39;s ID (ORGANISATION_ID)
    # @param date_id An Organisation Date&#39;s ID (DATE_ID)
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_date_with_http_info(id, date_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganisationsApi#delete_date ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling delete_date" if id.nil?
      
      # verify the required parameter 'date_id' is set
      fail "Missing the required parameter 'date_id' when calling delete_date" if date_id.nil?
      
      # resource path
      path = "/Organisations/{id}/Dates/{dateId}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s).sub('{' + 'dateId' + '}', date_id.to_s)

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
        @api_client.config.logger.debug "API called: OrganisationsApi#delete_date\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets a list of Organisation&#39;s Emails
    # 
    # @param id An Organisation&#39;s ID
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

    # Gets a list of Organisation&#39;s Emails
    # 
    # @param id An Organisation&#39;s ID
    # @param [Hash] opts the optional parameters
    # @option opts [DateTime] :updated_after_utc Optional, earliest date when email was last updated.
    # @option opts [Integer] :top Optional, maximum number of emails to return.
    # @option opts [Integer] :skip Optional, number of emails to skip.
    # @option opts [BOOLEAN] :brief true if only top level properties needs to be returned.
    # @option opts [BOOLEAN] :count_total true if total number of records should be returned in the response headers.
    # @return [Array<(Array<APIEmail>, Fixnum, Hash)>] Array<APIEmail> data, response status code and response headers
    def get_emails_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganisationsApi#get_emails ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling get_emails" if id.nil?
      
      # resource path
      path = "/Organisations/{id}/Emails".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: OrganisationsApi#get_emails\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets an Organisation&#39;s Events
    # 
    # @param id An Organisation&#39;s ID (ORGANISATION_ID)
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

    # Gets an Organisation&#39;s Events
    # 
    # @param id An Organisation&#39;s ID (ORGANISATION_ID)
    # @param [Hash] opts the optional parameters
    # @option opts [DateTime] :updated_after_utc Optional, earliest date when event was last updated.
    # @option opts [Integer] :top Optional, maximum number of events to return.
    # @option opts [Integer] :skip Optional, number of events to skip.
    # @option opts [BOOLEAN] :brief true if only top level properties needs to be returned.
    # @option opts [BOOLEAN] :count_total true if total number of records should be returned in the response headers.
    # @return [Array<(Array<APICalendarEvent>, Fixnum, Hash)>] Array<APICalendarEvent> data, response status code and response headers
    def get_events_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganisationsApi#get_events ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling get_events" if id.nil?
      
      # resource path
      path = "/Organisations/{id}/Events".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: OrganisationsApi#get_events\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets an Organisation&#39;s File Attachments
    # 
    # @param id An Organisation&#39;s ID (ORGANISATION_ID)
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

    # Gets an Organisation&#39;s File Attachments
    # 
    # @param id An Organisation&#39;s ID (ORGANISATION_ID)
    # @param [Hash] opts the optional parameters
    # @option opts [DateTime] :updated_after_utc Optional, earliest date when file attachment was last updated.
    # @option opts [Integer] :skip Optional, number of file attachments to skip.
    # @option opts [Integer] :top Optional, maximum number of file attachments to return in the response.
    # @option opts [BOOLEAN] :count_total true if total number of records should be returned in the response headers.
    # @return [Array<(Array<APIFileAttachment>, Fixnum, Hash)>] Array<APIFileAttachment> data, response status code and response headers
    def get_file_attachments_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganisationsApi#get_file_attachments ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling get_file_attachments" if id.nil?
      
      # resource path
      path = "/Organisations/{id}/FileAttachments".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: OrganisationsApi#get_file_attachments\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Adds a File Attachment to an Organisation
    # 
    # @param id An Organisation&#39;s ID (ORGANISATION_ID)
    # @param file This endpoint expects a multi-part form request. See Stack Overflow or v2.2 Python SDK upload() function for an example of how this is done. Can only upload one file attachment per request.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :file_name The name and extension of the File Attachment
    # @option opts [String] :content_type The MIME type of the File Attachment
    # @option opts [Integer] :file_category_id The category of the File Attachment, if it has been assigned to one
    # @return [APIFileAttachment]
    def add_file_attachment(id, file, opts = {})
      data, status_code, headers = add_file_attachment_with_http_info(id, file, opts)
      return data
    end

    # Adds a File Attachment to an Organisation
    # 
    # @param id An Organisation&#39;s ID (ORGANISATION_ID)
    # @param file This endpoint expects a multi-part form request. See Stack Overflow or v2.2 Python SDK upload() function for an example of how this is done. Can only upload one file attachment per request.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :file_name The name and extension of the File Attachment
    # @option opts [String] :content_type The MIME type of the File Attachment
    # @option opts [Integer] :file_category_id The category of the File Attachment, if it has been assigned to one
    # @return [Array<(APIFileAttachment, Fixnum, Hash)>] APIFileAttachment data, response status code and response headers
    def add_file_attachment_with_http_info(id, file, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganisationsApi#add_file_attachment ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling add_file_attachment" if id.nil?
      
      # verify the required parameter 'file' is set
      fail "Missing the required parameter 'file' when calling add_file_attachment" if file.nil?
      
      # resource path
      path = "/Organisations/{id}/FileAttachments".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: OrganisationsApi#add_file_attachment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets a Follow record for the Organisation
    # 
    # @param id An Organisation&#39;s ID (ORGANISATION_ID)
    # @param [Hash] opts the optional parameters
    # @return [APIFollow]
    def get_follow(id, opts = {})
      data, status_code, headers = get_follow_with_http_info(id, opts)
      return data
    end

    # Gets a Follow record for the Organisation
    # 
    # @param id An Organisation&#39;s ID (ORGANISATION_ID)
    # @param [Hash] opts the optional parameters
    # @return [Array<(APIFollow, Fixnum, Hash)>] APIFollow data, response status code and response headers
    def get_follow_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganisationsApi#get_follow ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling get_follow" if id.nil?
      
      # resource path
      path = "/Organisations/{id}/Follow".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: OrganisationsApi#get_follow\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Start following an Organisation
    # 
    # @param id An Organisation&#39;s ID (ORGANISATION_ID)
    # @param [Hash] opts the optional parameters
    # @return [APIFollow]
    def add_follow(id, opts = {})
      data, status_code, headers = add_follow_with_http_info(id, opts)
      return data
    end

    # Start following an Organisation
    # 
    # @param id An Organisation&#39;s ID (ORGANISATION_ID)
    # @param [Hash] opts the optional parameters
    # @return [Array<(APIFollow, Fixnum, Hash)>] APIFollow data, response status code and response headers
    def add_follow_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganisationsApi#add_follow ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling add_follow" if id.nil?
      
      # resource path
      path = "/Organisations/{id}/Follow".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: OrganisationsApi#add_follow\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Stop following an Organisation
    # 
    # @param id An Organisation&#39;s ID (ORGANISATION_ID)
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_follow(id, opts = {})
      delete_follow_with_http_info(id, opts)
      return nil
    end

    # Stop following an Organisation
    # 
    # @param id An Organisation&#39;s ID (ORGANISATION_ID)
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_follow_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganisationsApi#delete_follow ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling delete_follow" if id.nil?
      
      # resource path
      path = "/Organisations/{id}/Follow".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: OrganisationsApi#delete_follow\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets an Organisations&#39;s Image
    # 
    # @param id An Organisation&#39;s ID (ORGANISATION_ID)
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def get_image(id, opts = {})
      get_image_with_http_info(id, opts)
      return nil
    end

    # Gets an Organisations&#39;s Image
    # 
    # @param id An Organisation&#39;s ID (ORGANISATION_ID)
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def get_image_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganisationsApi#get_image ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling get_image" if id.nil?
      
      # resource path
      path = "/Organisations/{id}/Image".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: OrganisationsApi#get_image\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes an Organisation&#39;s Image
    # 
    # @param id An Organisation&#39;s ID (ORGANISATION_ID)
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_image(id, opts = {})
      delete_image_with_http_info(id, opts)
      return nil
    end

    # Deletes an Organisation&#39;s Image
    # 
    # @param id An Organisation&#39;s ID (ORGANISATION_ID)
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_image_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganisationsApi#delete_image ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling delete_image" if id.nil?
      
      # resource path
      path = "/Organisations/{id}/Image".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: OrganisationsApi#delete_image\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates an Organisation&#39;s Image
    # This action will replace any existing Image attached to the Organisation. Imafe file contents should be sent as binary data in request payload. See v2.2 Python SDK upload_image() function for an example of how this is done.
    # @param id An Organisation&#39;s ID (ORGANISATION_ID)
    # @param filename Name of Image File to be attached to Organisation
    # @param file File to upload
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def update_image(id, filename, file, opts = {})
      update_image_with_http_info(id, filename, file, opts)
      return nil
    end

    # Updates an Organisation&#39;s Image
    # This action will replace any existing Image attached to the Organisation. Imafe file contents should be sent as binary data in request payload. See v2.2 Python SDK upload_image() function for an example of how this is done.
    # @param id An Organisation&#39;s ID (ORGANISATION_ID)
    # @param filename Name of Image File to be attached to Organisation
    # @param file File to upload
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_image_with_http_info(id, filename, file, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganisationsApi#update_image ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling update_image" if id.nil?
      
      # verify the required parameter 'filename' is set
      fail "Missing the required parameter 'filename' when calling update_image" if filename.nil?
      
      # verify the required parameter 'file' is set
      fail "Missing the required parameter 'file' when calling update_image" if file.nil?
      
      # resource path
      path = "/Organisations/{id}/Image/{filename}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s).sub('{' + 'filename' + '}', filename.to_s)

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
        @api_client.config.logger.debug "API called: OrganisationsApi#update_image\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates a Link
    # 
    # @param id An Organisation&#39;s ID (ORGANISATION_ID)
    # @param api_link The Link to add (just include the JSON object in the request body)
    # @param [Hash] opts the optional parameters
    # @return [APILink]
    def update_link(id, api_link, opts = {})
      data, status_code, headers = update_link_with_http_info(id, api_link, opts)
      return data
    end

    # Updates a Link
    # 
    # @param id An Organisation&#39;s ID (ORGANISATION_ID)
    # @param api_link The Link to add (just include the JSON object in the request body)
    # @param [Hash] opts the optional parameters
    # @return [Array<(APILink, Fixnum, Hash)>] APILink data, response status code and response headers
    def update_link_with_http_info(id, api_link, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganisationsApi#update_link ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling update_link" if id.nil?
      
      # verify the required parameter 'api_link' is set
      fail "Missing the required parameter 'api_link' when calling update_link" if api_link.nil?
      
      # resource path
      path = "/Organisations/{id}/Links".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: OrganisationsApi#update_link\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Adds a Link
    # 
    # @param id An Organisation&#39;s ID (ORGANISATION_ID)
    # @param api_link The Link to add (just include the JSON object in the request body)
    # @param [Hash] opts the optional parameters
    # @return [APILink]
    def add_link(id, api_link, opts = {})
      data, status_code, headers = add_link_with_http_info(id, api_link, opts)
      return data
    end

    # Adds a Link
    # 
    # @param id An Organisation&#39;s ID (ORGANISATION_ID)
    # @param api_link The Link to add (just include the JSON object in the request body)
    # @param [Hash] opts the optional parameters
    # @return [Array<(APILink, Fixnum, Hash)>] APILink data, response status code and response headers
    def add_link_with_http_info(id, api_link, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganisationsApi#add_link ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling add_link" if id.nil?
      
      # verify the required parameter 'api_link' is set
      fail "Missing the required parameter 'api_link' when calling add_link" if api_link.nil?
      
      # resource path
      path = "/Organisations/{id}/Links".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: OrganisationsApi#add_link\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes a Link
    # 
    # @param id An Organisation&#39;s ID (ORGANISATION_ID)
    # @param link_id A Link&#39;s ID (LINK_ID)
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_link(id, link_id, opts = {})
      delete_link_with_http_info(id, link_id, opts)
      return nil
    end

    # Deletes a Link
    # 
    # @param id An Organisation&#39;s ID (ORGANISATION_ID)
    # @param link_id A Link&#39;s ID (LINK_ID)
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_link_with_http_info(id, link_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganisationsApi#delete_link ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling delete_link" if id.nil?
      
      # verify the required parameter 'link_id' is set
      fail "Missing the required parameter 'link_id' when calling delete_link" if link_id.nil?
      
      # resource path
      path = "/Organisations/{id}/Links/{linkId}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s).sub('{' + 'linkId' + '}', link_id.to_s)

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
        @api_client.config.logger.debug "API called: OrganisationsApi#delete_link\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets an Organisation&#39;s Notes
    # 
    # @param id An Organisation&#39;s ID (ORGANISATION_ID)
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

    # Gets an Organisation&#39;s Notes
    # 
    # @param id An Organisation&#39;s ID (ORGANISATION_ID)
    # @param [Hash] opts the optional parameters
    # @option opts [DateTime] :updated_after_utc Optional, earliest date when note was last updated.
    # @option opts [Integer] :top Optional, maximum number of notes to return.
    # @option opts [Integer] :skip Optional, number of notes to skip.
    # @option opts [BOOLEAN] :brief true if only top level properties needs to be returned.
    # @option opts [BOOLEAN] :count_total true if total number of records should be returned in the response headers.
    # @return [Array<(Array<APINote>, Fixnum, Hash)>] Array<APINote> data, response status code and response headers
    def get_notes_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganisationsApi#get_notes ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling get_notes" if id.nil?
      
      # resource path
      path = "/Organisations/{id}/Notes".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: OrganisationsApi#get_notes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Adds a Note to an Organisation
    # 
    # @param id An Organisation&#39;s ID (ORGANISATION_ID)
    # @param api_note The Note to add (just include the JSON object in the request body)
    # @param [Hash] opts the optional parameters
    # @return [APINote]
    def add_note(id, api_note, opts = {})
      data, status_code, headers = add_note_with_http_info(id, api_note, opts)
      return data
    end

    # Adds a Note to an Organisation
    # 
    # @param id An Organisation&#39;s ID (ORGANISATION_ID)
    # @param api_note The Note to add (just include the JSON object in the request body)
    # @param [Hash] opts the optional parameters
    # @return [Array<(APINote, Fixnum, Hash)>] APINote data, response status code and response headers
    def add_note_with_http_info(id, api_note, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganisationsApi#add_note ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling add_note" if id.nil?
      
      # verify the required parameter 'api_note' is set
      fail "Missing the required parameter 'api_note' when calling add_note" if api_note.nil?
      
      # resource path
      path = "/Organisations/{id}/Notes".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: OrganisationsApi#add_note\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates an Organisation Link
    # 
    # @param id An Organisation&#39;s ID (ORGANISATION_ID)
    # @param api_link The Organisation Link to add (just include the JSON object in the request body)
    # @param [Hash] opts the optional parameters
    # @return [APIOrganisationLink]
    def update_organisation_link(id, api_link, opts = {})
      data, status_code, headers = update_organisation_link_with_http_info(id, api_link, opts)
      return data
    end

    # Updates an Organisation Link
    # 
    # @param id An Organisation&#39;s ID (ORGANISATION_ID)
    # @param api_link The Organisation Link to add (just include the JSON object in the request body)
    # @param [Hash] opts the optional parameters
    # @return [Array<(APIOrganisationLink, Fixnum, Hash)>] APIOrganisationLink data, response status code and response headers
    def update_organisation_link_with_http_info(id, api_link, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganisationsApi#update_organisation_link ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling update_organisation_link" if id.nil?
      
      # verify the required parameter 'api_link' is set
      fail "Missing the required parameter 'api_link' when calling update_organisation_link" if api_link.nil?
      
      # resource path
      path = "/Organisations/{id}/OrganisationLinks".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'APIOrganisationLink')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganisationsApi#update_organisation_link\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Adds an Organisation Link
    # 
    # @param id An Organisation&#39;s ID (ORGANISATION_ID)
    # @param api_link The Organisation Link to add (just include the JSON object in the request body)
    # @param [Hash] opts the optional parameters
    # @return [APIOrganisationLink]
    def add_organisation_link(id, api_link, opts = {})
      data, status_code, headers = add_organisation_link_with_http_info(id, api_link, opts)
      return data
    end

    # Adds an Organisation Link
    # 
    # @param id An Organisation&#39;s ID (ORGANISATION_ID)
    # @param api_link The Organisation Link to add (just include the JSON object in the request body)
    # @param [Hash] opts the optional parameters
    # @return [Array<(APIOrganisationLink, Fixnum, Hash)>] APIOrganisationLink data, response status code and response headers
    def add_organisation_link_with_http_info(id, api_link, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganisationsApi#add_organisation_link ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling add_organisation_link" if id.nil?
      
      # verify the required parameter 'api_link' is set
      fail "Missing the required parameter 'api_link' when calling add_organisation_link" if api_link.nil?
      
      # resource path
      path = "/Organisations/{id}/OrganisationLinks".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'APIOrganisationLink')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrganisationsApi#add_organisation_link\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes an Organisation Link
    # 
    # @param id An Organisation&#39;s ID (ORGANISATION_ID)
    # @param link_id An Organisation Link&#39;s ID (ORG_LINK_ID)
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_organisation_link(id, link_id, opts = {})
      delete_organisation_link_with_http_info(id, link_id, opts)
      return nil
    end

    # Deletes an Organisation Link
    # 
    # @param id An Organisation&#39;s ID (ORGANISATION_ID)
    # @param link_id An Organisation Link&#39;s ID (ORG_LINK_ID)
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_organisation_link_with_http_info(id, link_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganisationsApi#delete_organisation_link ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling delete_organisation_link" if id.nil?
      
      # verify the required parameter 'link_id' is set
      fail "Missing the required parameter 'link_id' when calling delete_organisation_link" if link_id.nil?
      
      # resource path
      path = "/Organisations/{id}/OrganisationLinks/{linkId}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s).sub('{' + 'linkId' + '}', link_id.to_s)

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
        @api_client.config.logger.debug "API called: OrganisationsApi#delete_organisation_link\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Adds a Tag
    # 
    # @param id An Organisation&#39;s ID (ORGANISATION_ID)
    # @param api_tag The Tag to add (just include the JSON object in the request body)
    # @param [Hash] opts the optional parameters
    # @return [APITag]
    def add_tag(id, api_tag, opts = {})
      data, status_code, headers = add_tag_with_http_info(id, api_tag, opts)
      return data
    end

    # Adds a Tag
    # 
    # @param id An Organisation&#39;s ID (ORGANISATION_ID)
    # @param api_tag The Tag to add (just include the JSON object in the request body)
    # @param [Hash] opts the optional parameters
    # @return [Array<(APITag, Fixnum, Hash)>] APITag data, response status code and response headers
    def add_tag_with_http_info(id, api_tag, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganisationsApi#add_tag ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling add_tag" if id.nil?
      
      # verify the required parameter 'api_tag' is set
      fail "Missing the required parameter 'api_tag' when calling add_tag" if api_tag.nil?
      
      # resource path
      path = "/Organisations/{id}/Tags".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: OrganisationsApi#add_tag\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes a Tag
    # 
    # @param id An Organisation&#39;s ID (ORGANISATION_ID)
    # @param tag_name A Tag&#39;s name
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_tag(id, tag_name, opts = {})
      delete_tag_with_http_info(id, tag_name, opts)
      return nil
    end

    # Deletes a Tag
    # 
    # @param id An Organisation&#39;s ID (ORGANISATION_ID)
    # @param tag_name A Tag&#39;s name
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_tag_with_http_info(id, tag_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganisationsApi#delete_tag ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling delete_tag" if id.nil?
      
      # verify the required parameter 'tag_name' is set
      fail "Missing the required parameter 'tag_name' when calling delete_tag" if tag_name.nil?
      
      # resource path
      path = "/Organisations/{id}/Tags/{tagName}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s).sub('{' + 'tagName' + '}', tag_name.to_s)

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
        @api_client.config.logger.debug "API called: OrganisationsApi#delete_tag\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets a list of Organisation&#39;s Tasks
    # 
    # @param id An Organisation&#39;s ID
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

    # Gets a list of Organisation&#39;s Tasks
    # 
    # @param id An Organisation&#39;s ID
    # @param [Hash] opts the optional parameters
    # @option opts [DateTime] :updated_after_utc Optional, earliest date when task was last updated.
    # @option opts [Integer] :top Optional, maximum number of tasks to return.
    # @option opts [Integer] :skip Optional, number of tasks to skip.
    # @option opts [BOOLEAN] :brief true if only top level properties needs to be returned.
    # @option opts [BOOLEAN] :count_total true if total number of records should be returned in the response headers.
    # @return [Array<(Array<APITask>, Fixnum, Hash)>] Array<APITask> data, response status code and response headers
    def get_tasks_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrganisationsApi#get_tasks ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling get_tasks" if id.nil?
      
      # resource path
      path = "/Organisations/{id}/Tasks".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: OrganisationsApi#get_tasks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end




