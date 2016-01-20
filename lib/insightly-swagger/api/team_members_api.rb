require "uri"

module InsightlySwagger
  class TeamMembersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Gets a list of Team Members
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :skip Optional, number of team members to skip.
    # @option opts [Integer] :top Optional, maximum number of team members to return in the response.
    # @option opts [BOOLEAN] :count_total Optional, true if total number of records should be returned in the response headers.
    # @return [Array<APITeamMember>]
    def get_team_members(opts = {})
      data, status_code, headers = get_team_members_with_http_info(opts)
      return data
    end

    # Gets a list of Team Members
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :skip Optional, number of team members to skip.
    # @option opts [Integer] :top Optional, maximum number of team members to return in the response.
    # @option opts [BOOLEAN] :count_total Optional, true if total number of records should be returned in the response headers.
    # @return [Array<(Array<APITeamMember>, Fixnum, Hash)>] Array<APITeamMember> data, response status code and response headers
    def get_team_members_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TeamMembersApi#get_team_members ..."
      end
      
      # resource path
      path = "/TeamMembers".sub('{format}','json')

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
        :return_type => 'Array<APITeamMember>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TeamMembersApi#get_team_members\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates a Team Member
    # 
    # @param api_team_member The Team Member to update (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [APITeamMember]
    def update_team_member(api_team_member, opts = {})
      data, status_code, headers = update_team_member_with_http_info(api_team_member, opts)
      return data
    end

    # Updates a Team Member
    # 
    # @param api_team_member The Team Member to update (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [Array<(APITeamMember, Fixnum, Hash)>] APITeamMember data, response status code and response headers
    def update_team_member_with_http_info(api_team_member, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TeamMembersApi#update_team_member ..."
      end
      
      # verify the required parameter 'api_team_member' is set
      fail "Missing the required parameter 'api_team_member' when calling update_team_member" if api_team_member.nil?
      
      # resource path
      path = "/TeamMembers".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(api_team_member)
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'APITeamMember')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TeamMembersApi#update_team_member\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Adds a new Team Member
    # 
    # @param api_team_member The Team Member to add (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [APITeamMember]
    def add_team_member(api_team_member, opts = {})
      data, status_code, headers = add_team_member_with_http_info(api_team_member, opts)
      return data
    end

    # Adds a new Team Member
    # 
    # @param api_team_member The Team Member to add (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [Array<(APITeamMember, Fixnum, Hash)>] APITeamMember data, response status code and response headers
    def add_team_member_with_http_info(api_team_member, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TeamMembersApi#add_team_member ..."
      end
      
      # verify the required parameter 'api_team_member' is set
      fail "Missing the required parameter 'api_team_member' when calling add_team_member" if api_team_member.nil?
      
      # resource path
      path = "/TeamMembers".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(api_team_member)
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'APITeamMember')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TeamMembersApi#add_team_member\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets a Team Member
    # 
    # @param id A Team Member&#39;s ID (PERMISSION_ID)
    # @param [Hash] opts the optional parameters
    # @return [APITeamMember]
    def get_team_member(id, opts = {})
      data, status_code, headers = get_team_member_with_http_info(id, opts)
      return data
    end

    # Gets a Team Member
    # 
    # @param id A Team Member&#39;s ID (PERMISSION_ID)
    # @param [Hash] opts the optional parameters
    # @return [Array<(APITeamMember, Fixnum, Hash)>] APITeamMember data, response status code and response headers
    def get_team_member_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TeamMembersApi#get_team_member ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling get_team_member" if id.nil?
      
      # resource path
      path = "/TeamMembers/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'APITeamMember')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TeamMembersApi#get_team_member\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes a Team Member
    # 
    # @param id A Team Member&#39;s ID (PERMISSION_ID)
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_team_member(id, opts = {})
      delete_team_member_with_http_info(id, opts)
      return nil
    end

    # Deletes a Team Member
    # 
    # @param id A Team Member&#39;s ID (PERMISSION_ID)
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_team_member_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TeamMembersApi#delete_team_member ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling delete_team_member" if id.nil?
      
      # resource path
      path = "/TeamMembers/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: TeamMembersApi#delete_team_member\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end




