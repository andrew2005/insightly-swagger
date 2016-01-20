require "uri"

module InsightlySwagger
  class PipelineStagesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Gets a list of Pipeline Stages
    # This read only endpoint returns a list of the pipeline stages that have been set up for the Insightly instance.            Pipeline stages are used to indicate where a project or opportunity is in terms of its progression.            For example, stage 1 for the sales pipeline might be \&quot;initial contact\&quot;, while stage 4 might be \&quot;generating quote\&quot;.            The API for pipeline stages is read only, so to create or update pipeline stages, you&#39;ll need to use the web app to do so.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :skip Optional, number of stages to skip.
    # @option opts [Integer] :top Optional, maximum number of stages to return in the response.
    # @option opts [BOOLEAN] :count_total Optional, true if total number of records should be returned in the response headers.
    # @return [Array<APIPipelineStage>]
    def get_pipeline_stages(opts = {})
      data, status_code, headers = get_pipeline_stages_with_http_info(opts)
      return data
    end

    # Gets a list of Pipeline Stages
    # This read only endpoint returns a list of the pipeline stages that have been set up for the Insightly instance.            Pipeline stages are used to indicate where a project or opportunity is in terms of its progression.            For example, stage 1 for the sales pipeline might be \&quot;initial contact\&quot;, while stage 4 might be \&quot;generating quote\&quot;.            The API for pipeline stages is read only, so to create or update pipeline stages, you&#39;ll need to use the web app to do so.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :skip Optional, number of stages to skip.
    # @option opts [Integer] :top Optional, maximum number of stages to return in the response.
    # @option opts [BOOLEAN] :count_total Optional, true if total number of records should be returned in the response headers.
    # @return [Array<(Array<APIPipelineStage>, Fixnum, Hash)>] Array<APIPipelineStage> data, response status code and response headers
    def get_pipeline_stages_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PipelineStagesApi#get_pipeline_stages ..."
      end
      
      # resource path
      path = "/PipelineStages".sub('{format}','json')

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
        :return_type => 'Array<APIPipelineStage>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PipelineStagesApi#get_pipeline_stages\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets a Pipeline Stage
    # This endpoint returns the graph for a specific pipeline stage.
    # @param id A Pipeline Stage&#39;s ID
    # @param [Hash] opts the optional parameters
    # @return [APIPipelineStage]
    def get_pipeline_stage(id, opts = {})
      data, status_code, headers = get_pipeline_stage_with_http_info(id, opts)
      return data
    end

    # Gets a Pipeline Stage
    # This endpoint returns the graph for a specific pipeline stage.
    # @param id A Pipeline Stage&#39;s ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(APIPipelineStage, Fixnum, Hash)>] APIPipelineStage data, response status code and response headers
    def get_pipeline_stage_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PipelineStagesApi#get_pipeline_stage ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling get_pipeline_stage" if id.nil?
      
      # resource path
      path = "/PipelineStages/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'APIPipelineStage')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PipelineStagesApi#get_pipeline_stage\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end




