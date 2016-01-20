require "uri"

module InsightlySwagger
  class PipelinesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Gets a list of Pipelines
    # This read only endpoint returns a list of pipelines that have been set up for the Insightly instance.            Pipelines can be defined for both projects and opportunities, and are used to track the progression of projects and opportunities.            To create and update pipelines, you&#39;ll need to go to the web app (API access is read-only).
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :skip Optional, number of pipelines to skip.
    # @option opts [Integer] :top Optional, maximum number of pipelines to return in the response.
    # @option opts [BOOLEAN] :count_total Optional, true if total number of records should be returned in the response headers.
    # @return [Array<APIPipeline>]
    def get_pipelines(opts = {})
      data, status_code, headers = get_pipelines_with_http_info(opts)
      return data
    end

    # Gets a list of Pipelines
    # This read only endpoint returns a list of pipelines that have been set up for the Insightly instance.            Pipelines can be defined for both projects and opportunities, and are used to track the progression of projects and opportunities.            To create and update pipelines, you&#39;ll need to go to the web app (API access is read-only).
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :skip Optional, number of pipelines to skip.
    # @option opts [Integer] :top Optional, maximum number of pipelines to return in the response.
    # @option opts [BOOLEAN] :count_total Optional, true if total number of records should be returned in the response headers.
    # @return [Array<(Array<APIPipeline>, Fixnum, Hash)>] Array<APIPipeline> data, response status code and response headers
    def get_pipelines_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PipelinesApi#get_pipelines ..."
      end
      
      # resource path
      path = "/Pipelines".sub('{format}','json')

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
        :return_type => 'Array<APIPipeline>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PipelinesApi#get_pipelines\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets a Pipeline
    # This endpoint returns the graph for a specific pipeline.
    # @param id A Pipeline&#39;s ID
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def get_pipeline(id, opts = {})
      get_pipeline_with_http_info(id, opts)
      return nil
    end

    # Gets a Pipeline
    # This endpoint returns the graph for a specific pipeline.
    # @param id A Pipeline&#39;s ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def get_pipeline_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PipelinesApi#get_pipeline ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling get_pipeline" if id.nil?
      
      # resource path
      path = "/Pipelines/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PipelinesApi#get_pipeline\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end




