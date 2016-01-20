require "uri"

module InsightlySwagger
  class TasksApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Gets a list of Tasks.
    # Simple object graphs (excluding TASKLINKS) are returned if \&quot;brief=true\&quot; is used in the query string.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :brief Optional, true if response should only contain top level properties of the task.
    # @option opts [Integer] :skip Optional, number of tasks to skip.
    # @option opts [Integer] :top Optional, maximum number of tasks to return in the response.
    # @option opts [BOOLEAN] :count_total Optional, true if total number of records should be returned in the response headers.
    # @return [Array<APITask>]
    def get_tasks(opts = {})
      data, status_code, headers = get_tasks_with_http_info(opts)
      return data
    end

    # Gets a list of Tasks.
    # Simple object graphs (excluding TASKLINKS) are returned if \&quot;brief=true\&quot; is used in the query string.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :brief Optional, true if response should only contain top level properties of the task.
    # @option opts [Integer] :skip Optional, number of tasks to skip.
    # @option opts [Integer] :top Optional, maximum number of tasks to return in the response.
    # @option opts [BOOLEAN] :count_total Optional, true if total number of records should be returned in the response headers.
    # @return [Array<(Array<APITask>, Fixnum, Hash)>] Array<APITask> data, response status code and response headers
    def get_tasks_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TasksApi#get_tasks ..."
      end
      
      # resource path
      path = "/Tasks".sub('{format}','json')

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
        :return_type => 'Array<APITask>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TasksApi#get_tasks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates a Task
    # A common source of problems when updating tasks occurs when users omit required fields, or insert             invalid data into a field. A good troubleshooting technique             is to create a few tasks via the web interface, with representative data, links, etc, and then access             these tasks via the API, and inspect the returned object graph.
    # @param api_task The Task to update (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :brief Optional, true if you wish to do a partial update containing only top level properties of the Task. When true, all sub-collections are ignored.
    # @return [APITask]
    def update_task(api_task, opts = {})
      data, status_code, headers = update_task_with_http_info(api_task, opts)
      return data
    end

    # Updates a Task
    # A common source of problems when updating tasks occurs when users omit required fields, or insert             invalid data into a field. A good troubleshooting technique             is to create a few tasks via the web interface, with representative data, links, etc, and then access             these tasks via the API, and inspect the returned object graph.
    # @param api_task The Task to update (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :brief Optional, true if you wish to do a partial update containing only top level properties of the Task. When true, all sub-collections are ignored.
    # @return [Array<(APITask, Fixnum, Hash)>] APITask data, response status code and response headers
    def update_task_with_http_info(api_task, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TasksApi#update_task ..."
      end
      
      # verify the required parameter 'api_task' is set
      fail "Missing the required parameter 'api_task' when calling update_task" if api_task.nil?
      
      # resource path
      path = "/Tasks".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(api_task)
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'APITask')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TasksApi#update_task\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Adds a Task
    # A common source of problems when creating tasks occurs when users omit required fields, or insert             invalid data into a field. A good troubleshooting technique             is to create a few tasks via the web interface, with representative data, links, etc, and then access             these tasks via the API, and inspect the returned object graph.
    # @param api_task The Task to add (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [APITask]
    def add_task(api_task, opts = {})
      data, status_code, headers = add_task_with_http_info(api_task, opts)
      return data
    end

    # Adds a Task
    # A common source of problems when creating tasks occurs when users omit required fields, or insert             invalid data into a field. A good troubleshooting technique             is to create a few tasks via the web interface, with representative data, links, etc, and then access             these tasks via the API, and inspect the returned object graph.
    # @param api_task The Task to add (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [Array<(APITask, Fixnum, Hash)>] APITask data, response status code and response headers
    def add_task_with_http_info(api_task, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TasksApi#add_task ..."
      end
      
      # verify the required parameter 'api_task' is set
      fail "Missing the required parameter 'api_task' when calling add_task" if api_task.nil?
      
      # resource path
      path = "/Tasks".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(api_task)
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'APITask')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TasksApi#add_task\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets a filtered list of Tasks.
    # Only one optional parameter (excluding brief, top, skip and count_total) can be specified. Simple object graphs (excluding TASKLINKS) are returned if \&quot;brief=true\&quot; is used in the query string.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :title Optional, task title.
    # @option opts [String] :status Optional, status of the task.
    # @option opts [Integer] :category_id Optional, category id.
    # @option opts [Integer] :owner_user_id Optional, id of the owner user.
    # @option opts [DateTime] :updated_after_utc Optional, earliest date when task was last updated.
    # @option opts [BOOLEAN] :brief Optional, true if response should only contain top level properties of the task.
    # @option opts [Integer] :skip Optional, number of tasks to skip.
    # @option opts [Integer] :top Optional, maximum number of tasks to return in the response.
    # @option opts [BOOLEAN] :count_total Optional, true if total number of records should be returned in the response headers.
    # @return [Array<APITask>]
    def get_tasks_by_search(opts = {})
      data, status_code, headers = get_tasks_by_search_with_http_info(opts)
      return data
    end

    # Gets a filtered list of Tasks.
    # Only one optional parameter (excluding brief, top, skip and count_total) can be specified. Simple object graphs (excluding TASKLINKS) are returned if \&quot;brief=true\&quot; is used in the query string.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :title Optional, task title.
    # @option opts [String] :status Optional, status of the task.
    # @option opts [Integer] :category_id Optional, category id.
    # @option opts [Integer] :owner_user_id Optional, id of the owner user.
    # @option opts [DateTime] :updated_after_utc Optional, earliest date when task was last updated.
    # @option opts [BOOLEAN] :brief Optional, true if response should only contain top level properties of the task.
    # @option opts [Integer] :skip Optional, number of tasks to skip.
    # @option opts [Integer] :top Optional, maximum number of tasks to return in the response.
    # @option opts [BOOLEAN] :count_total Optional, true if total number of records should be returned in the response headers.
    # @return [Array<(Array<APITask>, Fixnum, Hash)>] Array<APITask> data, response status code and response headers
    def get_tasks_by_search_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TasksApi#get_tasks_by_search ..."
      end
      
      # resource path
      path = "/Tasks/Search".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'title'] = opts[:'title'] if opts[:'title']
      query_params[:'status'] = opts[:'status'] if opts[:'status']
      query_params[:'category_id'] = opts[:'category_id'] if opts[:'category_id']
      query_params[:'owner_user_id'] = opts[:'owner_user_id'] if opts[:'owner_user_id']
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
        :return_type => 'Array<APITask>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TasksApi#get_tasks_by_search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets a Task
    # 
    # @param id A Task&#39;s ID
    # @param [Hash] opts the optional parameters
    # @return [APITask]
    def get_task(id, opts = {})
      data, status_code, headers = get_task_with_http_info(id, opts)
      return data
    end

    # Gets a Task
    # 
    # @param id A Task&#39;s ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(APITask, Fixnum, Hash)>] APITask data, response status code and response headers
    def get_task_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TasksApi#get_task ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling get_task" if id.nil?
      
      # resource path
      path = "/Tasks/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'APITask')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TasksApi#get_task\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes a Task
    # 
    # @param id A Task&#39;s ID
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_task(id, opts = {})
      delete_task_with_http_info(id, opts)
      return nil
    end

    # Deletes a Task
    # 
    # @param id A Task&#39;s ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_task_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TasksApi#delete_task ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling delete_task" if id.nil?
      
      # resource path
      path = "/Tasks/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: TasksApi#delete_task\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets a Task&#39;s Comments
    # 
    # @param id A Task&#39;s ID (TASK_ID)
    # @param [Hash] opts the optional parameters
    # @option opts [DateTime] :updated_after_utc Optional, earliest date when comment was last updated.
    # @option opts [Integer] :skip Optional, number of comments to skip.
    # @option opts [Integer] :top Optional, maximum number of comments to return in the response.
    # @option opts [BOOLEAN] :count_total true if total number of records should be returned in the response headers.
    # @return [Array<APIComment>]
    def get_comments(id, opts = {})
      data, status_code, headers = get_comments_with_http_info(id, opts)
      return data
    end

    # Gets a Task&#39;s Comments
    # 
    # @param id A Task&#39;s ID (TASK_ID)
    # @param [Hash] opts the optional parameters
    # @option opts [DateTime] :updated_after_utc Optional, earliest date when comment was last updated.
    # @option opts [Integer] :skip Optional, number of comments to skip.
    # @option opts [Integer] :top Optional, maximum number of comments to return in the response.
    # @option opts [BOOLEAN] :count_total true if total number of records should be returned in the response headers.
    # @return [Array<(Array<APIComment>, Fixnum, Hash)>] Array<APIComment> data, response status code and response headers
    def get_comments_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TasksApi#get_comments ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling get_comments" if id.nil?
      
      # resource path
      path = "/Tasks/{id}/Comments".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
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
        :return_type => 'Array<APIComment>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TasksApi#get_comments\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Adds a Comment to a task.
    # 
    # @param id A Task&#39;s ID (TASK_ID)
    # @param api_comment The Comment to add (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [APIComment]
    def add_comment(id, api_comment, opts = {})
      data, status_code, headers = add_comment_with_http_info(id, api_comment, opts)
      return data
    end

    # Adds a Comment to a task.
    # 
    # @param id A Task&#39;s ID (TASK_ID)
    # @param api_comment The Comment to add (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [Array<(APIComment, Fixnum, Hash)>] APIComment data, response status code and response headers
    def add_comment_with_http_info(id, api_comment, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TasksApi#add_comment ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling add_comment" if id.nil?
      
      # verify the required parameter 'api_comment' is set
      fail "Missing the required parameter 'api_comment' when calling add_comment" if api_comment.nil?
      
      # resource path
      path = "/Tasks/{id}/Comments".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(api_comment)
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'APIComment')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TasksApi#add_comment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets a Follow record for the Task
    # 
    # @param id A Task&#39;s ID (TASK_ID)
    # @param [Hash] opts the optional parameters
    # @return [APIFollow]
    def get_follow(id, opts = {})
      data, status_code, headers = get_follow_with_http_info(id, opts)
      return data
    end

    # Gets a Follow record for the Task
    # 
    # @param id A Task&#39;s ID (TASK_ID)
    # @param [Hash] opts the optional parameters
    # @return [Array<(APIFollow, Fixnum, Hash)>] APIFollow data, response status code and response headers
    def get_follow_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TasksApi#get_follow ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling get_follow" if id.nil?
      
      # resource path
      path = "/Tasks/{id}/Follow".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'APIFollow')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TasksApi#get_follow\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Start following a Task
    # 
    # @param id A Task&#39;s ID (TASK_ID)
    # @param [Hash] opts the optional parameters
    # @return [APIFollow]
    def add_follow(id, opts = {})
      data, status_code, headers = add_follow_with_http_info(id, opts)
      return data
    end

    # Start following a Task
    # 
    # @param id A Task&#39;s ID (TASK_ID)
    # @param [Hash] opts the optional parameters
    # @return [Array<(APIFollow, Fixnum, Hash)>] APIFollow data, response status code and response headers
    def add_follow_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TasksApi#add_follow ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling add_follow" if id.nil?
      
      # resource path
      path = "/Tasks/{id}/Follow".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
      data, status_code, headers = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'APIFollow')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TasksApi#add_follow\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Stop following a Task
    # 
    # @param id A Task&#39;s ID (TASK_ID)
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_follow(id, opts = {})
      delete_follow_with_http_info(id, opts)
      return nil
    end

    # Stop following a Task
    # 
    # @param id A Task&#39;s ID (TASK_ID)
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_follow_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TasksApi#delete_follow ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling delete_follow" if id.nil?
      
      # resource path
      path = "/Tasks/{id}/Follow".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: TasksApi#delete_follow\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates a Task Link
    # 
    # @param id A Task&#39;s ID (TASK_ID)
    # @param api_link The Task Link to update (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [APITaskLink]
    def update_task_link(id, api_link, opts = {})
      data, status_code, headers = update_task_link_with_http_info(id, api_link, opts)
      return data
    end

    # Updates a Task Link
    # 
    # @param id A Task&#39;s ID (TASK_ID)
    # @param api_link The Task Link to update (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [Array<(APITaskLink, Fixnum, Hash)>] APITaskLink data, response status code and response headers
    def update_task_link_with_http_info(id, api_link, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TasksApi#update_task_link ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling update_task_link" if id.nil?
      
      # verify the required parameter 'api_link' is set
      fail "Missing the required parameter 'api_link' when calling update_task_link" if api_link.nil?
      
      # resource path
      path = "/Tasks/{id}/TaskLinks".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(api_link)
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'APITaskLink')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TasksApi#update_task_link\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Adds a Task Link
    # 
    # @param id A Task&#39;s ID (TASK_ID)
    # @param api_link The Task Link to add (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [APITaskLink]
    def add_task_link(id, api_link, opts = {})
      data, status_code, headers = add_task_link_with_http_info(id, api_link, opts)
      return data
    end

    # Adds a Task Link
    # 
    # @param id A Task&#39;s ID (TASK_ID)
    # @param api_link The Task Link to add (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [Array<(APITaskLink, Fixnum, Hash)>] APITaskLink data, response status code and response headers
    def add_task_link_with_http_info(id, api_link, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TasksApi#add_task_link ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling add_task_link" if id.nil?
      
      # verify the required parameter 'api_link' is set
      fail "Missing the required parameter 'api_link' when calling add_task_link" if api_link.nil?
      
      # resource path
      path = "/Tasks/{id}/TaskLinks".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(api_link)
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'APITaskLink')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TasksApi#add_task_link\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes a Task Link
    # 
    # @param id A Task&#39;s ID (TASK_ID)
    # @param link_id A Task Link&#39;s ID (TASK_LINK_ID)
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_task_link(id, link_id, opts = {})
      delete_task_link_with_http_info(id, link_id, opts)
      return nil
    end

    # Deletes a Task Link
    # 
    # @param id A Task&#39;s ID (TASK_ID)
    # @param link_id A Task Link&#39;s ID (TASK_LINK_ID)
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_task_link_with_http_info(id, link_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TasksApi#delete_task_link ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling delete_task_link" if id.nil?
      
      # verify the required parameter 'link_id' is set
      fail "Missing the required parameter 'link_id' when calling delete_task_link" if link_id.nil?
      
      # resource path
      path = "/Tasks/{id}/TaskLinks/{linkId}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s).sub('{' + 'linkId' + '}', link_id.to_s)

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
        @api_client.config.logger.debug "API called: TasksApi#delete_task_link\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end




