require "uri"

module InsightlySwagger
  class OpportunityCategoriesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Gets a list of Opportunity Categories
    # This read only endpoint returns a list of opportunity categories set up for the Insightly instance.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :skip Optional, number of categories to skip.
    # @option opts [Integer] :top Optional, maximum number of categories to return in the response.
    # @option opts [BOOLEAN] :count_total Optional, true if total number of records should be returned in the response headers.
    # @return [Array<APICategory>]
    def get_opportunity_categories(opts = {})
      data, status_code, headers = get_opportunity_categories_with_http_info(opts)
      return data
    end

    # Gets a list of Opportunity Categories
    # This read only endpoint returns a list of opportunity categories set up for the Insightly instance.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :skip Optional, number of categories to skip.
    # @option opts [Integer] :top Optional, maximum number of categories to return in the response.
    # @option opts [BOOLEAN] :count_total Optional, true if total number of records should be returned in the response headers.
    # @return [Array<(Array<APICategory>, Fixnum, Hash)>] Array<APICategory> data, response status code and response headers
    def get_opportunity_categories_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OpportunityCategoriesApi#get_opportunity_categories ..."
      end
      
      # resource path
      path = "/OpportunityCategories".sub('{format}','json')

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
        @api_client.config.logger.debug "API called: OpportunityCategoriesApi#get_opportunity_categories\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates an Opportunity Category
    # This endpoint is used to update an existing opportunity category (for example, to change the background color for its label in the user interace). This endpoint is only accessible to users with administrator permission.
    # @param category An Opportunity Category (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [APICategory]
    def update_opportunity_category(category, opts = {})
      data, status_code, headers = update_opportunity_category_with_http_info(category, opts)
      return data
    end

    # Updates an Opportunity Category
    # This endpoint is used to update an existing opportunity category (for example, to change the background color for its label in the user interace). This endpoint is only accessible to users with administrator permission.
    # @param category An Opportunity Category (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [Array<(APICategory, Fixnum, Hash)>] APICategory data, response status code and response headers
    def update_opportunity_category_with_http_info(category, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OpportunityCategoriesApi#update_opportunity_category ..."
      end
      
      # verify the required parameter 'category' is set
      fail "Missing the required parameter 'category' when calling update_opportunity_category" if category.nil?
      
      # resource path
      path = "/OpportunityCategories".sub('{format}','json')

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
        @api_client.config.logger.debug "API called: OpportunityCategoriesApi#update_opportunity_category\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Adds an Opportunity Category
    # This endpoint is used to create a new opportunity category. This endpoint is only accessible to users with administrator permission.
    # @param category The Opportunity Category to add (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [APICategory]
    def add_opportunity_category(category, opts = {})
      data, status_code, headers = add_opportunity_category_with_http_info(category, opts)
      return data
    end

    # Adds an Opportunity Category
    # This endpoint is used to create a new opportunity category. This endpoint is only accessible to users with administrator permission.
    # @param category The Opportunity Category to add (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [Array<(APICategory, Fixnum, Hash)>] APICategory data, response status code and response headers
    def add_opportunity_category_with_http_info(category, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OpportunityCategoriesApi#add_opportunity_category ..."
      end
      
      # verify the required parameter 'category' is set
      fail "Missing the required parameter 'category' when calling add_opportunity_category" if category.nil?
      
      # resource path
      path = "/OpportunityCategories".sub('{format}','json')

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
        @api_client.config.logger.debug "API called: OpportunityCategoriesApi#add_opportunity_category\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets an Opportunity Category
    # This endpoint returns the graph for a specific opportunity category
    # @param id An Opportunity Category&#39;s ID
    # @param [Hash] opts the optional parameters
    # @return [APICategory]
    def get_opportunity_category(id, opts = {})
      data, status_code, headers = get_opportunity_category_with_http_info(id, opts)
      return data
    end

    # Gets an Opportunity Category
    # This endpoint returns the graph for a specific opportunity category
    # @param id An Opportunity Category&#39;s ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(APICategory, Fixnum, Hash)>] APICategory data, response status code and response headers
    def get_opportunity_category_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OpportunityCategoriesApi#get_opportunity_category ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling get_opportunity_category" if id.nil?
      
      # resource path
      path = "/OpportunityCategories/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: OpportunityCategoriesApi#get_opportunity_category\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes an Opportunity Category
    # The endpoint is used to delete an existing opportunity category. This endpoint is only accessible to users with administrator permission.
    # @param id An Opportunity Category&#39;s ID
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_opportunity_category(id, opts = {})
      delete_opportunity_category_with_http_info(id, opts)
      return nil
    end

    # Deletes an Opportunity Category
    # The endpoint is used to delete an existing opportunity category. This endpoint is only accessible to users with administrator permission.
    # @param id An Opportunity Category&#39;s ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_opportunity_category_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OpportunityCategoriesApi#delete_opportunity_category ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling delete_opportunity_category" if id.nil?
      
      # resource path
      path = "/OpportunityCategories/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: OpportunityCategoriesApi#delete_opportunity_category\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end




