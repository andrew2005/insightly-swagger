require "uri"

module InsightlySwagger
  class CurrenciesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Gets a list of Currencies used by Insightly
    # This read only endpoint returns a list of the currencies and currency symbols currently recognized by Insightly.
    # @param [Hash] opts the optional parameters
    # @return [Array<APICurrency>]
    def get_currencies(opts = {})
      data, status_code, headers = get_currencies_with_http_info(opts)
      return data
    end

    # Gets a list of Currencies used by Insightly
    # This read only endpoint returns a list of the currencies and currency symbols currently recognized by Insightly.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<APICurrency>, Fixnum, Hash)>] Array<APICurrency> data, response status code and response headers
    def get_currencies_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CurrenciesApi#get_currencies ..."
      end
      
      # resource path
      path = "/Currencies".sub('{format}','json')

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
        :return_type => 'Array<APICurrency>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CurrenciesApi#get_currencies\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end




