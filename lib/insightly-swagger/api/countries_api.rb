require "uri"

module InsightlySwagger
  class CountriesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Gets a list of Countries used by Insightly
    # This read only endpoint returns a list of the countries Insightly recognizes for use in addresses.
    # @param [Hash] opts the optional parameters
    # @return [Array<APICountry>]
    def get_countries(opts = {})
      data, status_code, headers = get_countries_with_http_info(opts)
      return data
    end

    # Gets a list of Countries used by Insightly
    # This read only endpoint returns a list of the countries Insightly recognizes for use in addresses.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<APICountry>, Fixnum, Hash)>] Array<APICountry> data, response status code and response headers
    def get_countries_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CountriesApi#get_countries ..."
      end
      
      # resource path
      path = "/Countries".sub('{format}','json')

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
        :return_type => 'Array<APICountry>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CountriesApi#get_countries\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end




