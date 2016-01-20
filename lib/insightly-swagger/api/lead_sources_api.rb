require "uri"

module InsightlySwagger
  class LeadSourcesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Gets a list of Lead Sources
    # This endpoint returns a list of the lead sources that have been defined on the Insightly instance.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :skip Optional, number of lead sources to skip.
    # @option opts [Integer] :top Optional, maximum number of lead sources to return in the response.
    # @option opts [BOOLEAN] :count_total Optional, true if total number of records should be returned in the response headers.
    # @return [Array<APILeadSource>]
    def get_lead_sources(opts = {})
      data, status_code, headers = get_lead_sources_with_http_info(opts)
      return data
    end

    # Gets a list of Lead Sources
    # This endpoint returns a list of the lead sources that have been defined on the Insightly instance.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :skip Optional, number of lead sources to skip.
    # @option opts [Integer] :top Optional, maximum number of lead sources to return in the response.
    # @option opts [BOOLEAN] :count_total Optional, true if total number of records should be returned in the response headers.
    # @return [Array<(Array<APILeadSource>, Fixnum, Hash)>] Array<APILeadSource> data, response status code and response headers
    def get_lead_sources_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LeadSourcesApi#get_lead_sources ..."
      end
      
      # resource path
      path = "/LeadSources".sub('{format}','json')

      # query parameters
      query_params = {}
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
        :return_type => 'Array<APILeadSource>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeadSourcesApi#get_lead_sources\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates a Lead Source
    # This endpoint is used to update an existing lead source.
    # @param lead_source A Lead Source
    # @param [Hash] opts the optional parameters
    # @return [APILeadSource]
    def update_lead_source(lead_source, opts = {})
      data, status_code, headers = update_lead_source_with_http_info(lead_source, opts)
      return data
    end

    # Updates a Lead Source
    # This endpoint is used to update an existing lead source.
    # @param lead_source A Lead Source
    # @param [Hash] opts the optional parameters
    # @return [Array<(APILeadSource, Fixnum, Hash)>] APILeadSource data, response status code and response headers
    def update_lead_source_with_http_info(lead_source, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LeadSourcesApi#update_lead_source ..."
      end
      
      # verify the required parameter 'lead_source' is set
      fail "Missing the required parameter 'lead_source' when calling update_lead_source" if lead_source.nil?
      
      # resource path
      path = "/LeadSources".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(lead_source)
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'APILeadSource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeadSourcesApi#update_lead_source\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Adds a Lead Source
    # This endpoint is used to define a new lead source. This endpoint is only accessible to users with administrator access.
    # @param lead_source The Lead Source to add
    # @param [Hash] opts the optional parameters
    # @return [APILeadSource]
    def add_lead_source(lead_source, opts = {})
      data, status_code, headers = add_lead_source_with_http_info(lead_source, opts)
      return data
    end

    # Adds a Lead Source
    # This endpoint is used to define a new lead source. This endpoint is only accessible to users with administrator access.
    # @param lead_source The Lead Source to add
    # @param [Hash] opts the optional parameters
    # @return [Array<(APILeadSource, Fixnum, Hash)>] APILeadSource data, response status code and response headers
    def add_lead_source_with_http_info(lead_source, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LeadSourcesApi#add_lead_source ..."
      end
      
      # verify the required parameter 'lead_source' is set
      fail "Missing the required parameter 'lead_source' when calling add_lead_source" if lead_source.nil?
      
      # resource path
      path = "/LeadSources".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(lead_source)
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'APILeadSource')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeadSourcesApi#add_lead_source\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes a Lead Source
    # This endpoint is used to delete an existing lead source.
    # @param id A Lead Source&#39;s ID
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_lead_source(id, opts = {})
      delete_lead_source_with_http_info(id, opts)
      return nil
    end

    # Deletes a Lead Source
    # This endpoint is used to delete an existing lead source.
    # @param id A Lead Source&#39;s ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_lead_source_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: LeadSourcesApi#delete_lead_source ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling delete_lead_source" if id.nil?
      
      # resource path
      path = "/LeadSources/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: LeadSourcesApi#delete_lead_source\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end




