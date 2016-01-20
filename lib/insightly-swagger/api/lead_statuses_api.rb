require "uri"

module InsightlySwagger
  class LeadStatusesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Gets a list of Lead Statuses
    # This endpoint returns a list of the possible lead statuses that have been defined for the Insightly instance.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :include_converted Optional, by default converted status is not included, pass in \&quot;true\&quot; to include it in the response
    # @option opts [Integer] :skip Optional, number of lead statuses to skip.
    # @option opts [Integer] :top Optional, maximum number of lead statuses to return in the response.
    # @option opts [BOOLEAN] :count_total Optional, true if total number of records should be returned in the response headers.
    # @return [Array<APILeadStatus>]
    def get_lead_statuses(opts = {})
      data, status_code, headers = get_lead_statuses_with_http_info(opts)
      return data
    end

    # Gets a list of Lead Statuses
    # This endpoint returns a list of the possible lead statuses that have been defined for the Insightly instance.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :include_converted Optional, by default converted status is not included, pass in \&quot;true\&quot; to include it in the response
    # @option opts [Integer] :skip Optional, number of lead statuses to skip.
    # @option opts [Integer] :top Optional, maximum number of lead statuses to return in the response.
    # @option opts [BOOLEAN] :count_total Optional, true if total number of records should be returned in the response headers.
    # @return [Array<(Array<APILeadStatus>, Fixnum, Hash)>] Array<APILeadStatus> data, response status code and response headers
    def get_lead_statuses_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LeadStatusesApi#get_lead_statuses ..."
      end
      
      # resource path
      path = "/LeadStatuses".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'include_converted'] = opts[:'include_converted'] if opts[:'include_converted']
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
        :return_type => 'Array<APILeadStatus>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeadStatusesApi#get_lead_statuses\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates a Lead Status
    # This endpoint is used to update an existing lead status. This endpoint is only accessible to users with administrator access.
    # @param lead_status A Lead Status
    # @param [Hash] opts the optional parameters
    # @return [APILeadStatus]
    def update_lead_status(lead_status, opts = {})
      data, status_code, headers = update_lead_status_with_http_info(lead_status, opts)
      return data
    end

    # Updates a Lead Status
    # This endpoint is used to update an existing lead status. This endpoint is only accessible to users with administrator access.
    # @param lead_status A Lead Status
    # @param [Hash] opts the optional parameters
    # @return [Array<(APILeadStatus, Fixnum, Hash)>] APILeadStatus data, response status code and response headers
    def update_lead_status_with_http_info(lead_status, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LeadStatusesApi#update_lead_status ..."
      end
      
      # verify the required parameter 'lead_status' is set
      fail "Missing the required parameter 'lead_status' when calling update_lead_status" if lead_status.nil?
      
      # resource path
      path = "/LeadStatuses".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(lead_status)
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'APILeadStatus')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeadStatusesApi#update_lead_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Adds a Lead Status
    # This endpoint is used to add a new lead status option to the instance. This endpoint is only accessible to users with administrator access.
    # @param lead_status The Lead Status to add
    # @param [Hash] opts the optional parameters
    # @return [APILeadStatus]
    def add_lead_status(lead_status, opts = {})
      data, status_code, headers = add_lead_status_with_http_info(lead_status, opts)
      return data
    end

    # Adds a Lead Status
    # This endpoint is used to add a new lead status option to the instance. This endpoint is only accessible to users with administrator access.
    # @param lead_status The Lead Status to add
    # @param [Hash] opts the optional parameters
    # @return [Array<(APILeadStatus, Fixnum, Hash)>] APILeadStatus data, response status code and response headers
    def add_lead_status_with_http_info(lead_status, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LeadStatusesApi#add_lead_status ..."
      end
      
      # verify the required parameter 'lead_status' is set
      fail "Missing the required parameter 'lead_status' when calling add_lead_status" if lead_status.nil?
      
      # resource path
      path = "/LeadStatuses".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(lead_status)
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'APILeadStatus')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeadStatusesApi#add_lead_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes a Lead Status
    # This endpoint is used to delete an existing lead status.
    # @param id A Lead Status&#39;s ID
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_lead_status(id, opts = {})
      delete_lead_status_with_http_info(id, opts)
      return nil
    end

    # Deletes a Lead Status
    # This endpoint is used to delete an existing lead status.
    # @param id A Lead Status&#39;s ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_lead_status_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LeadStatusesApi#delete_lead_status ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling delete_lead_status" if id.nil?
      
      # resource path
      path = "/LeadStatuses/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: LeadStatusesApi#delete_lead_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end




