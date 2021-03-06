require "uri"

module InsightlySwagger
  class InstanceApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Gets the Instance
    # 
    # @param [Hash] opts the optional parameters
    # @return [APIInstance]
    def get_instance(opts = {})
      data, status_code, headers = get_instance_with_http_info(opts)
      return data
    end

    # Gets the Instance
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<(APIInstance, Fixnum, Hash)>] APIInstance data, response status code and response headers
    def get_instance_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: InstanceApi#get_instance ..."
      end
      
      # resource path
      path = "/Instance".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
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
        :return_type => 'APIInstance')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InstanceApi#get_instance\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end




