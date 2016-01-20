require "uri"

module InsightlySwagger
  class TagsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Gets a list of Tags used for a record type
    # This endpoint returns a list of tags associated with a record type. The endpoint expects the query parameter            record_type=contacts|leads|opportunities|organisations|projects|emails, so to fetch a list of tags associated with contacts, your query would be            /Tags?record_type=contacts
    # @param record_type Required, filters tags by a given record type.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :skip Optional, number of records to skip.
    # @option opts [Integer] :top Optional, maximum number of records to return in the response.
    # @option opts [BOOLEAN] :count_total Optional, true if total number of records should be returned in the response headers.
    # @return [Array<APITag>]
    def get_tags(record_type, opts = {})
      data, status_code, headers = get_tags_with_http_info(record_type, opts)
      return data
    end

    # Gets a list of Tags used for a record type
    # This endpoint returns a list of tags associated with a record type. The endpoint expects the query parameter            record_type=contacts|leads|opportunities|organisations|projects|emails, so to fetch a list of tags associated with contacts, your query would be            /Tags?record_type=contacts
    # @param record_type Required, filters tags by a given record type.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :skip Optional, number of records to skip.
    # @option opts [Integer] :top Optional, maximum number of records to return in the response.
    # @option opts [BOOLEAN] :count_total Optional, true if total number of records should be returned in the response headers.
    # @return [Array<(Array<APITag>, Fixnum, Hash)>] Array<APITag> data, response status code and response headers
    def get_tags_with_http_info(record_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TagsApi#get_tags ..."
      end
      
      # verify the required parameter 'record_type' is set
      fail "Missing the required parameter 'record_type' when calling get_tags" if record_type.nil?
      
      # resource path
      path = "/Tags".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'record_type'] = record_type
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
        :return_type => 'Array<APITag>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TagsApi#get_tags\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end




