require "uri"

module InsightlySwagger
  class CustomFieldsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Gets a list of Custom Fields
    # Use this API call to get a list of custom fields, and their IDs. A common problem API users have is to reference an invalid CUSTOM_FIELD_ID when referencing custom fields in a newly created or updated object.            If you plan to use custom fields in your API based application, be sure you are working with valid custom field IDs. To add or update custom fields for your Insightly instance, you&#39;ll need to go to the web app to do so.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :skip Optional, number of custom fields to skip.
    # @option opts [Integer] :top Optional, maximum number of custom fields to return in the response.
    # @option opts [BOOLEAN] :count_total Optional, true if total number of records should be returned in the response headers.
    # @return [Array<APICustomFieldMetadata>]
    def get_custom_fields(opts = {})
      data, status_code, headers = get_custom_fields_with_http_info(opts)
      return data
    end

    # Gets a list of Custom Fields
    # Use this API call to get a list of custom fields, and their IDs. A common problem API users have is to reference an invalid CUSTOM_FIELD_ID when referencing custom fields in a newly created or updated object.            If you plan to use custom fields in your API based application, be sure you are working with valid custom field IDs. To add or update custom fields for your Insightly instance, you&#39;ll need to go to the web app to do so.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :skip Optional, number of custom fields to skip.
    # @option opts [Integer] :top Optional, maximum number of custom fields to return in the response.
    # @option opts [BOOLEAN] :count_total Optional, true if total number of records should be returned in the response headers.
    # @return [Array<(Array<APICustomFieldMetadata>, Fixnum, Hash)>] Array<APICustomFieldMetadata> data, response status code and response headers
    def get_custom_fields_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CustomFieldsApi#get_custom_fields ..."
      end
      
      # resource path
      path = "/CustomFields".sub('{format}','json')

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
        :return_type => 'Array<APICustomFieldMetadata>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomFieldsApi#get_custom_fields\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets a Custom Field
    # This endpoint returns the graph for a specific custom field.
    # @param id A Custom Field&#39;s ID
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def get_custom_field(id, opts = {})
      get_custom_field_with_http_info(id, opts)
      return nil
    end

    # Gets a Custom Field
    # This endpoint returns the graph for a specific custom field.
    # @param id A Custom Field&#39;s ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def get_custom_field_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CustomFieldsApi#get_custom_field ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling get_custom_field" if id.nil?
      
      # resource path
      path = "/CustomFields/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: CustomFieldsApi#get_custom_field\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end




