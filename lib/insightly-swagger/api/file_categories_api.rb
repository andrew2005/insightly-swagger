require "uri"

module InsightlySwagger
  class FileCategoriesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Gets a list of File Categories
    # This read only endpoint returns a list of file categories that have been set up for the Insightly instance.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :skip Optional, number of file categories to skip.
    # @option opts [Integer] :top Optional, maximum number of file categories to return in the response.
    # @option opts [BOOLEAN] :count_total Optional, true if total number of records should be returned in the response headers.
    # @return [Array<APICategory>]
    def get_file_categories(opts = {})
      data, status_code, headers = get_file_categories_with_http_info(opts)
      return data
    end

    # Gets a list of File Categories
    # This read only endpoint returns a list of file categories that have been set up for the Insightly instance.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :skip Optional, number of file categories to skip.
    # @option opts [Integer] :top Optional, maximum number of file categories to return in the response.
    # @option opts [BOOLEAN] :count_total Optional, true if total number of records should be returned in the response headers.
    # @return [Array<(Array<APICategory>, Fixnum, Hash)>] Array<APICategory> data, response status code and response headers
    def get_file_categories_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FileCategoriesApi#get_file_categories ..."
      end
      
      # resource path
      path = "/FileCategories".sub('{format}','json')

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
        :return_type => 'Array<APICategory>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FileCategoriesApi#get_file_categories\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates a File Category
    # This endpoint is used to update an existing File Category. This endpoint is only accessible to users with administrator permission.
    # @param category A File Category (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [APICategory]
    def update_file_category(category, opts = {})
      data, status_code, headers = update_file_category_with_http_info(category, opts)
      return data
    end

    # Updates a File Category
    # This endpoint is used to update an existing File Category. This endpoint is only accessible to users with administrator permission.
    # @param category A File Category (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [Array<(APICategory, Fixnum, Hash)>] APICategory data, response status code and response headers
    def update_file_category_with_http_info(category, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FileCategoriesApi#update_file_category ..."
      end
      
      # verify the required parameter 'category' is set
      fail "Missing the required parameter 'category' when calling update_file_category" if category.nil?
      
      # resource path
      path = "/FileCategories".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(category)
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'APICategory')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FileCategoriesApi#update_file_category\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Adds a File Category
    # This endpoint is used to create a new File Category. This endpoint is only accessible to users with administrator permission.
    # @param category The File Category to add (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [APICategory]
    def add_file_category(category, opts = {})
      data, status_code, headers = add_file_category_with_http_info(category, opts)
      return data
    end

    # Adds a File Category
    # This endpoint is used to create a new File Category. This endpoint is only accessible to users with administrator permission.
    # @param category The File Category to add (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [Array<(APICategory, Fixnum, Hash)>] APICategory data, response status code and response headers
    def add_file_category_with_http_info(category, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FileCategoriesApi#add_file_category ..."
      end
      
      # verify the required parameter 'category' is set
      fail "Missing the required parameter 'category' when calling add_file_category" if category.nil?
      
      # resource path
      path = "/FileCategories".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(category)
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'APICategory')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FileCategoriesApi#add_file_category\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets a File Category
    # This endpoint returns the graph for a specific file category.
    # @param id A File Category&#39;s ID
    # @param [Hash] opts the optional parameters
    # @return [APICategory]
    def get_file_category(id, opts = {})
      data, status_code, headers = get_file_category_with_http_info(id, opts)
      return data
    end

    # Gets a File Category
    # This endpoint returns the graph for a specific file category.
    # @param id A File Category&#39;s ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(APICategory, Fixnum, Hash)>] APICategory data, response status code and response headers
    def get_file_category_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FileCategoriesApi#get_file_category ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling get_file_category" if id.nil?
      
      # resource path
      path = "/FileCategories/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'APICategory')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FileCategoriesApi#get_file_category\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes a File Category
    # This endpoint is used to delete an existing File Category. This endpoint is only accessible to users with administrator permission.
    # @param id A File Category&#39;s ID
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_file_category(id, opts = {})
      delete_file_category_with_http_info(id, opts)
      return nil
    end

    # Deletes a File Category
    # This endpoint is used to delete an existing File Category. This endpoint is only accessible to users with administrator permission.
    # @param id A File Category&#39;s ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_file_category_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FileCategoriesApi#delete_file_category ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling delete_file_category" if id.nil?
      
      # resource path
      path = "/FileCategories/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FileCategoriesApi#delete_file_category\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end




