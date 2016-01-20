require "uri"

module InsightlySwagger
  class UsersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Gets a list of Users
    # This is a read only endpoint that returns a list of users associated with an Insightly instance.            Use this endpoint when you need to obtain a list of valid USER_IDs, for example, when you want to assign            a task to a specific user (do not confuse the USER_ID with their CONTACT_ID).
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :skip Optional, number of users to skip.
    # @option opts [Integer] :top Optional, maximum number of users to return in the response.
    # @option opts [BOOLEAN] :count_total Optional, true if total number of records should be returned in the response headers.
    # @return [Array<APIUser>]
    def get_users(opts = {})
      data, status_code, headers = get_users_with_http_info(opts)
      return data
    end

    # Gets a list of Users
    # This is a read only endpoint that returns a list of users associated with an Insightly instance.            Use this endpoint when you need to obtain a list of valid USER_IDs, for example, when you want to assign            a task to a specific user (do not confuse the USER_ID with their CONTACT_ID).
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :skip Optional, number of users to skip.
    # @option opts [Integer] :top Optional, maximum number of users to return in the response.
    # @option opts [BOOLEAN] :count_total Optional, true if total number of records should be returned in the response headers.
    # @return [Array<(Array<APIUser>, Fixnum, Hash)>] Array<APIUser> data, response status code and response headers
    def get_users_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersApi#get_users ..."
      end
      
      # resource path
      path = "/Users".sub('{format}','json')

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
        :return_type => 'Array<APIUser>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#get_users\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets the User object for the calling user.
    # This read only endpoint returns the details for the currently authenticated user on an Insightly instance, same fields as            returned by the /Users endpoint, but only for a single identified user.
    # @param [Hash] opts the optional parameters
    # @return [APIUser]
    def get_user_me(opts = {})
      data, status_code, headers = get_user_me_with_http_info(opts)
      return data
    end

    # Gets the User object for the calling user.
    # This read only endpoint returns the details for the currently authenticated user on an Insightly instance, same fields as            returned by the /Users endpoint, but only for a single identified user.
    # @param [Hash] opts the optional parameters
    # @return [Array<(APIUser, Fixnum, Hash)>] APIUser data, response status code and response headers
    def get_user_me_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersApi#get_user_me ..."
      end
      
      # resource path
      path = "/Users/Me".sub('{format}','json')

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
        :return_type => 'APIUser')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#get_user_me\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets a filtered list of Users
    # This is a read only endpoint that returns a list of users associated with an Insightly instance.            Use this endpoint when you need to obtain a list of valid USER_IDs, for example, when you want to assign            a task to a specific user (do not confuse the USER_ID with their CONTACT_ID). Only one optional parameter (excluding top, skip and count_total) can be specified.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :first_name Optional, first name.
    # @option opts [String] :last_name Optional, last name.
    # @option opts [String] :email Optional, user&#39;s email address.
    # @option opts [DateTime] :updated_after_utc Optional, earliest date when note was last updated.
    # @option opts [Integer] :skip Optional, number of users to skip.
    # @option opts [Integer] :top Optional, maximum number of users to return in the response.
    # @option opts [BOOLEAN] :count_total Optional, true if total number of records should be returned in the response headers.
    # @return [Array<APIUser>]
    def get_users_by_search(opts = {})
      data, status_code, headers = get_users_by_search_with_http_info(opts)
      return data
    end

    # Gets a filtered list of Users
    # This is a read only endpoint that returns a list of users associated with an Insightly instance.            Use this endpoint when you need to obtain a list of valid USER_IDs, for example, when you want to assign            a task to a specific user (do not confuse the USER_ID with their CONTACT_ID). Only one optional parameter (excluding top, skip and count_total) can be specified.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :first_name Optional, first name.
    # @option opts [String] :last_name Optional, last name.
    # @option opts [String] :email Optional, user&#39;s email address.
    # @option opts [DateTime] :updated_after_utc Optional, earliest date when note was last updated.
    # @option opts [Integer] :skip Optional, number of users to skip.
    # @option opts [Integer] :top Optional, maximum number of users to return in the response.
    # @option opts [BOOLEAN] :count_total Optional, true if total number of records should be returned in the response headers.
    # @return [Array<(Array<APIUser>, Fixnum, Hash)>] Array<APIUser> data, response status code and response headers
    def get_users_by_search_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersApi#get_users_by_search ..."
      end
      
      # resource path
      path = "/Users/Search".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'first_name'] = opts[:'first_name'] if opts[:'first_name']
      query_params[:'last_name'] = opts[:'last_name'] if opts[:'last_name']
      query_params[:'email'] = opts[:'email'] if opts[:'email']
      query_params[:'updated_after_utc'] = opts[:'updated_after_utc'] if opts[:'updated_after_utc']
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
        :return_type => 'Array<APIUser>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#get_users_by_search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets a User
    # This read only endpoint returns the details for a specific user on an Insightly instance, same fields as            returned by the /Users endpoint, but only for a single identified user.
    # @param id A User&#39;s ID
    # @param [Hash] opts the optional parameters
    # @return [APIUser]
    def get_user(id, opts = {})
      data, status_code, headers = get_user_with_http_info(id, opts)
      return data
    end

    # Gets a User
    # This read only endpoint returns the details for a specific user on an Insightly instance, same fields as            returned by the /Users endpoint, but only for a single identified user.
    # @param id A User&#39;s ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(APIUser, Fixnum, Hash)>] APIUser data, response status code and response headers
    def get_user_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersApi#get_user ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling get_user" if id.nil?
      
      # resource path
      path = "/Users/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'APIUser')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#get_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end




