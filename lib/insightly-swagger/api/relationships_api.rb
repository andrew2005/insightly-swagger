require "uri"

module InsightlySwagger
  class RelationshipsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Gets a list of Relationships
    # This read only endpoint returns a list of the relationships that have been defined for the Insightly instance.            Relationships enable users to define how one Insightly object is related to another.            For example: contact A is a customer of contact B. The API only supports read access to relationships, to create or update            relationships, you&#39;ll need to do so via the web app.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :skip Optional, number of records to skip.
    # @option opts [Integer] :top Optional, maximum number of records to return in the response.
    # @option opts [BOOLEAN] :count_total Optional, true if total number of records should be returned in the response headers.
    # @return [Array<APIRelationship>]
    def get_relationships(opts = {})
      data, status_code, headers = get_relationships_with_http_info(opts)
      return data
    end

    # Gets a list of Relationships
    # This read only endpoint returns a list of the relationships that have been defined for the Insightly instance.            Relationships enable users to define how one Insightly object is related to another.            For example: contact A is a customer of contact B. The API only supports read access to relationships, to create or update            relationships, you&#39;ll need to do so via the web app.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :skip Optional, number of records to skip.
    # @option opts [Integer] :top Optional, maximum number of records to return in the response.
    # @option opts [BOOLEAN] :count_total Optional, true if total number of records should be returned in the response headers.
    # @return [Array<(Array<APIRelationship>, Fixnum, Hash)>] Array<APIRelationship> data, response status code and response headers
    def get_relationships_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: RelationshipsApi#get_relationships ..."
      end
      
      # resource path
      path = "/Relationships".sub('{format}','json')

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
        :return_type => 'Array<APIRelationship>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RelationshipsApi#get_relationships\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end




