require "uri"

module InsightlySwagger
  class TeamsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Gets a list of Teams.
    # Simple object graphs (excluding TEAMMEMBERS) are returned if \&quot;brief=true\&quot; is used in the query string.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :brief Optional, true if response should only contain top level properties of the team.
    # @option opts [Integer] :skip Optional, number of teams to skip.
    # @option opts [Integer] :top Optional, maximum number of teams to return in the response.
    # @option opts [BOOLEAN] :count_total Optional, true if total number of records should be returned in the response headers.
    # @return [Array<APITeam>]
    def get_teams(opts = {})
      data, status_code, headers = get_teams_with_http_info(opts)
      return data
    end

    # Gets a list of Teams.
    # Simple object graphs (excluding TEAMMEMBERS) are returned if \&quot;brief=true\&quot; is used in the query string.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :brief Optional, true if response should only contain top level properties of the team.
    # @option opts [Integer] :skip Optional, number of teams to skip.
    # @option opts [Integer] :top Optional, maximum number of teams to return in the response.
    # @option opts [BOOLEAN] :count_total Optional, true if total number of records should be returned in the response headers.
    # @return [Array<(Array<APITeam>, Fixnum, Hash)>] Array<APITeam> data, response status code and response headers
    def get_teams_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TeamsApi#get_teams ..."
      end
      
      # resource path
      path = "/Teams".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'brief'] = opts[:'brief'] if opts[:'brief']
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
        :return_type => 'Array<APITeam>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TeamsApi#get_teams\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates a Team
    # 
    # @param api_team The Team to update (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :brief Optional, true if you wish to do a partial update containing only top level properties of the Team. When true, all sub-collections are ignored.
    # @return [APITeam]
    def update_team(api_team, opts = {})
      data, status_code, headers = update_team_with_http_info(api_team, opts)
      return data
    end

    # Updates a Team
    # 
    # @param api_team The Team to update (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :brief Optional, true if you wish to do a partial update containing only top level properties of the Team. When true, all sub-collections are ignored.
    # @return [Array<(APITeam, Fixnum, Hash)>] APITeam data, response status code and response headers
    def update_team_with_http_info(api_team, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TeamsApi#update_team ..."
      end
      
      # verify the required parameter 'api_team' is set
      fail "Missing the required parameter 'api_team' when calling update_team" if api_team.nil?
      
      # resource path
      path = "/Teams".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'brief'] = opts[:'brief'] if opts[:'brief']

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
      post_body = @api_client.object_to_http_body(api_team)
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'APITeam')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TeamsApi#update_team\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Adds a Team
    # 
    # @param api_team The Team to add (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [APITeam]
    def add_team(api_team, opts = {})
      data, status_code, headers = add_team_with_http_info(api_team, opts)
      return data
    end

    # Adds a Team
    # 
    # @param api_team The Team to add (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [Array<(APITeam, Fixnum, Hash)>] APITeam data, response status code and response headers
    def add_team_with_http_info(api_team, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TeamsApi#add_team ..."
      end
      
      # verify the required parameter 'api_team' is set
      fail "Missing the required parameter 'api_team' when calling add_team" if api_team.nil?
      
      # resource path
      path = "/Teams".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(api_team)
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'APITeam')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TeamsApi#add_team\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets a filtered list of Teams.
    # Only one optional parameter (excluding brief, top, skip and count_total) can be specified. Simple object graphs (excluding TEAMMEMBERS) are returned if \&quot;brief=true\&quot; is used in the query string.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :team_name Optional, name of the team.
    # @option opts [DateTime] :updated_after_utc Optional, earliest date when team was last updated.
    # @option opts [BOOLEAN] :brief Optional, true if response should only contain top level properties of the team.
    # @option opts [Integer] :skip Optional, number of teams to skip.
    # @option opts [Integer] :top Optional, maximum number of teams to return in the response.
    # @option opts [BOOLEAN] :count_total Optional, true if total number of records should be returned in the response headers.
    # @return [Array<APITeam>]
    def get_teams_by_search(opts = {})
      data, status_code, headers = get_teams_by_search_with_http_info(opts)
      return data
    end

    # Gets a filtered list of Teams.
    # Only one optional parameter (excluding brief, top, skip and count_total) can be specified. Simple object graphs (excluding TEAMMEMBERS) are returned if \&quot;brief=true\&quot; is used in the query string.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :team_name Optional, name of the team.
    # @option opts [DateTime] :updated_after_utc Optional, earliest date when team was last updated.
    # @option opts [BOOLEAN] :brief Optional, true if response should only contain top level properties of the team.
    # @option opts [Integer] :skip Optional, number of teams to skip.
    # @option opts [Integer] :top Optional, maximum number of teams to return in the response.
    # @option opts [BOOLEAN] :count_total Optional, true if total number of records should be returned in the response headers.
    # @return [Array<(Array<APITeam>, Fixnum, Hash)>] Array<APITeam> data, response status code and response headers
    def get_teams_by_search_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TeamsApi#get_teams_by_search ..."
      end
      
      # resource path
      path = "/Teams/Search".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'team_name'] = opts[:'team_name'] if opts[:'team_name']
      query_params[:'updated_after_utc'] = opts[:'updated_after_utc'] if opts[:'updated_after_utc']
      query_params[:'brief'] = opts[:'brief'] if opts[:'brief']
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
        :return_type => 'Array<APITeam>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TeamsApi#get_teams_by_search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets a Team
    # 
    # @param id A Team&#39;s ID
    # @param [Hash] opts the optional parameters
    # @return [APITeam]
    def get_team(id, opts = {})
      data, status_code, headers = get_team_with_http_info(id, opts)
      return data
    end

    # Gets a Team
    # 
    # @param id A Team&#39;s ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(APITeam, Fixnum, Hash)>] APITeam data, response status code and response headers
    def get_team_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TeamsApi#get_team ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling get_team" if id.nil?
      
      # resource path
      path = "/Teams/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'APITeam')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TeamsApi#get_team\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes a Team
    # 
    # @param id A Team&#39;s ID
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_team(id, opts = {})
      delete_team_with_http_info(id, opts)
      return nil
    end

    # Deletes a Team
    # 
    # @param id A Team&#39;s ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_team_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TeamsApi#delete_team ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling delete_team" if id.nil?
      
      # resource path
      path = "/Teams/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: TeamsApi#delete_team\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates a Team Member
    # 
    # @param id A Team&#39;s ID (TEAM_ID)
    # @param api_team_member The Team Member to update (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [APITeamMember]
    def update_team_member(id, api_team_member, opts = {})
      data, status_code, headers = update_team_member_with_http_info(id, api_team_member, opts)
      return data
    end

    # Updates a Team Member
    # 
    # @param id A Team&#39;s ID (TEAM_ID)
    # @param api_team_member The Team Member to update (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [Array<(APITeamMember, Fixnum, Hash)>] APITeamMember data, response status code and response headers
    def update_team_member_with_http_info(id, api_team_member, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TeamsApi#update_team_member ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling update_team_member" if id.nil?
      
      # verify the required parameter 'api_team_member' is set
      fail "Missing the required parameter 'api_team_member' when calling update_team_member" if api_team_member.nil?
      
      # resource path
      path = "/Teams/{id}/TeamMembers".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: TeamsApi#update_team_member\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Adds a Team Member
    # 
    # @param id A Team&#39;s ID (TEAM_ID)
    # @param api_team_member The Team Member to add (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [APITeamMember]
    def add_team_member(id, api_team_member, opts = {})
      data, status_code, headers = add_team_member_with_http_info(id, api_team_member, opts)
      return data
    end

    # Adds a Team Member
    # 
    # @param id A Team&#39;s ID (TEAM_ID)
    # @param api_team_member The Team Member to add (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [Array<(APITeamMember, Fixnum, Hash)>] APITeamMember data, response status code and response headers
    def add_team_member_with_http_info(id, api_team_member, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TeamsApi#add_team_member ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling add_team_member" if id.nil?
      
      # verify the required parameter 'api_team_member' is set
      fail "Missing the required parameter 'api_team_member' when calling add_team_member" if api_team_member.nil?
      
      # resource path
      path = "/Teams/{id}/TeamMembers".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: TeamsApi#add_team_member\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes a Team Member
    # 
    # @param id A Team&#39;s ID (TEAM_ID)
    # @param permission_id A Team Members&#39;s ID (PERMISSION_ID)
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_team_member(id, permission_id, opts = {})
      delete_team_member_with_http_info(id, permission_id, opts)
      return nil
    end

    # Deletes a Team Member
    # 
    # @param id A Team&#39;s ID (TEAM_ID)
    # @param permission_id A Team Members&#39;s ID (PERMISSION_ID)
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_team_member_with_http_info(id, permission_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TeamsApi#delete_team_member ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling delete_team_member" if id.nil?
      
      # verify the required parameter 'permission_id' is set
      fail "Missing the required parameter 'permission_id' when calling delete_team_member" if permission_id.nil?
      
      # resource path
      path = "/Teams/{id}/TeamMembers/{permissionId}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s).sub('{' + 'permissionId' + '}', permission_id.to_s)

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
        @api_client.config.logger.debug "API called: TeamsApi#delete_team_member\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end




