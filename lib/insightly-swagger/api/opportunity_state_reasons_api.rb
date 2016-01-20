require "uri"

module InsightlySwagger
  class OpportunityStateReasonsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Gets a list of Opportunity State Reasons
    # This endpoint returns a list of opportunity state reasons set up for the Insightly instance.            This is a read only endpoint, so to add or update opportunity state reasons, you will need to do that via the web app.            Opportunity state reasons are used to indicate why the opportunity state was set to its current value.            For example, you can use this to indicate why you lost a particular sale.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :skip Optional, number of states to skip.
    # @option opts [Integer] :top Optional, maximum number of states to return in the response.
    # @option opts [BOOLEAN] :count_total Optional, true if total number of records should be returned in the response headers.
    # @return [Array<APIOpportunityState>]
    def get_opportunity_state_reasons(opts = {})
      data, status_code, headers = get_opportunity_state_reasons_with_http_info(opts)
      return data
    end

    # Gets a list of Opportunity State Reasons
    # This endpoint returns a list of opportunity state reasons set up for the Insightly instance.            This is a read only endpoint, so to add or update opportunity state reasons, you will need to do that via the web app.            Opportunity state reasons are used to indicate why the opportunity state was set to its current value.            For example, you can use this to indicate why you lost a particular sale.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :skip Optional, number of states to skip.
    # @option opts [Integer] :top Optional, maximum number of states to return in the response.
    # @option opts [BOOLEAN] :count_total Optional, true if total number of records should be returned in the response headers.
    # @return [Array<(Array<APIOpportunityState>, Fixnum, Hash)>] Array<APIOpportunityState> data, response status code and response headers
    def get_opportunity_state_reasons_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OpportunityStateReasonsApi#get_opportunity_state_reasons ..."
      end
      
      # resource path
      path = "/OpportunityStateReasons".sub('{format}','json')

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
        :return_type => 'Array<APIOpportunityState>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OpportunityStateReasonsApi#get_opportunity_state_reasons\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end




