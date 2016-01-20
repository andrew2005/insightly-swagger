require "uri"

module InsightlySwagger
  class CustomFieldGroupsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Gets a list of Custom Field Groups defined for your instance
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :skip Optional, number of custom field groups to skip.
    # @option opts [Integer] :top Optional, maximum number of custom field groups to return in the response.
    # @option opts [BOOLEAN] :count_total Optional, true if total number of records should be returned in the response headers.
    # @return [Array<APICustomFieldGroup>]
    def get_custom_field_groups(opts = {})
      data, status_code, headers = get_custom_field_groups_with_http_info(opts)
      return data
    end

    # Gets a list of Custom Field Groups defined for your instance
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :skip Optional, number of custom field groups to skip.
    # @option opts [Integer] :top Optional, maximum number of custom field groups to return in the response.
    # @option opts [BOOLEAN] :count_total Optional, true if total number of records should be returned in the response headers.
    # @return [Array<(Array<APICustomFieldGroup>, Fixnum, Hash)>] Array<APICustomFieldGroup> data, response status code and response headers
    def get_custom_field_groups_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CustomFieldGroupsApi#get_custom_field_groups ..."
      end
      
      # resource path
      path = "/CustomFieldGroups".sub('{format}','json')

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
        :return_type => 'Array<APICustomFieldGroup>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomFieldGroupsApi#get_custom_field_groups\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end




