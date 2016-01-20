require "uri"

module InsightlySwagger
  class ActivitySetsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Gets a list of Activity Sets
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :brief Optional, true if response should only contain top level properties of the activity set.
    # @option opts [Integer] :skip Optional, number of activity sets to skip.
    # @option opts [Integer] :top Optional, maximum number of activity sets to return in the response.
    # @option opts [BOOLEAN] :count_total Optional, true if total number of records should be returned in the response headers.
    # @return [Array<APIActivitySet>]
    def get_activity_sets(opts = {})
      data, status_code, headers = get_activity_sets_with_http_info(opts)
      return data
    end

    # Gets a list of Activity Sets
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :brief Optional, true if response should only contain top level properties of the activity set.
    # @option opts [Integer] :skip Optional, number of activity sets to skip.
    # @option opts [Integer] :top Optional, maximum number of activity sets to return in the response.
    # @option opts [BOOLEAN] :count_total Optional, true if total number of records should be returned in the response headers.
    # @return [Array<(Array<APIActivitySet>, Fixnum, Hash)>] Array<APIActivitySet> data, response status code and response headers
    def get_activity_sets_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ActivitySetsApi#get_activity_sets ..."
      end
      
      # resource path
      path = "/ActivitySets".sub('{format}','json')

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
        :return_type => 'Array<APIActivitySet>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ActivitySetsApi#get_activity_sets\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets a single Activity Set
    # 
    # @param id An Activity Set&#39;s ID
    # @param [Hash] opts the optional parameters
    # @return [APIActivitySet]
    def get_activity_set(id, opts = {})
      data, status_code, headers = get_activity_set_with_http_info(id, opts)
      return data
    end

    # Gets a single Activity Set
    # 
    # @param id An Activity Set&#39;s ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(APIActivitySet, Fixnum, Hash)>] APIActivitySet data, response status code and response headers
    def get_activity_set_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ActivitySetsApi#get_activity_set ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling get_activity_set" if id.nil?
      
      # resource path
      path = "/ActivitySets/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'APIActivitySet')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ActivitySetsApi#get_activity_set\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end




