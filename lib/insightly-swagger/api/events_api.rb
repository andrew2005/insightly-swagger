require "uri"

module InsightlySwagger
  class EventsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Gets a list of Calendar Events.
    # Simple object graphs (excluding EVENTLINKS) are returned if \&quot;brief=true\&quot; is used in the query string.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :brief Optional, true if response should only contain top level properties of the event.
    # @option opts [Integer] :skip Optional, number of events to skip.
    # @option opts [Integer] :top Optional, maximum number of events to return in the response.
    # @option opts [BOOLEAN] :count_total Optional, true if total number of records should be returned in the response headers.
    # @return [Array<APICalendarEvent>]
    def get_events(opts = {})
      data, status_code, headers = get_events_with_http_info(opts)
      return data
    end

    # Gets a list of Calendar Events.
    # Simple object graphs (excluding EVENTLINKS) are returned if \&quot;brief=true\&quot; is used in the query string.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :brief Optional, true if response should only contain top level properties of the event.
    # @option opts [Integer] :skip Optional, number of events to skip.
    # @option opts [Integer] :top Optional, maximum number of events to return in the response.
    # @option opts [BOOLEAN] :count_total Optional, true if total number of records should be returned in the response headers.
    # @return [Array<(Array<APICalendarEvent>, Fixnum, Hash)>] Array<APICalendarEvent> data, response status code and response headers
    def get_events_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EventsApi#get_events ..."
      end
      
      # resource path
      path = "/Events".sub('{format}','json')

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
        :return_type => 'Array<APICalendarEvent>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EventsApi#get_events\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates a Calendar Event
    # 
    # @param api_event The Event to update (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :brief Optional, true if you wish to do a partial update containing only top level properties of the Event. When true, all sub-collections are ignored.
    # @return [APICalendarEvent]
    def update_event(api_event, opts = {})
      data, status_code, headers = update_event_with_http_info(api_event, opts)
      return data
    end

    # Updates a Calendar Event
    # 
    # @param api_event The Event to update (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :brief Optional, true if you wish to do a partial update containing only top level properties of the Event. When true, all sub-collections are ignored.
    # @return [Array<(APICalendarEvent, Fixnum, Hash)>] APICalendarEvent data, response status code and response headers
    def update_event_with_http_info(api_event, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EventsApi#update_event ..."
      end
      
      # verify the required parameter 'api_event' is set
      fail "Missing the required parameter 'api_event' when calling update_event" if api_event.nil?
      
      # resource path
      path = "/Events".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(api_event)
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'APICalendarEvent')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EventsApi#update_event\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Adds a Calendar Event
    # 
    # @param api_event The Event to add (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [APICalendarEvent]
    def add_event(api_event, opts = {})
      data, status_code, headers = add_event_with_http_info(api_event, opts)
      return data
    end

    # Adds a Calendar Event
    # 
    # @param api_event The Event to add (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [Array<(APICalendarEvent, Fixnum, Hash)>] APICalendarEvent data, response status code and response headers
    def add_event_with_http_info(api_event, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EventsApi#add_event ..."
      end
      
      # verify the required parameter 'api_event' is set
      fail "Missing the required parameter 'api_event' when calling add_event" if api_event.nil?
      
      # resource path
      path = "/Events".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(api_event)
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'APICalendarEvent')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EventsApi#add_event\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets a filtered list of Calendar Events.
    # Only one optional parameter (excluding top, skip and count_total) can be specified. Simple object graphs (excluding EVENTLINKS) are returned if \&quot;brief=true\&quot; is used in the query string.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :title Optional, event title.
    # @option opts [Integer] :owner_user_id Optional, id of the owner user.
    # @option opts [DateTime] :start_date_utc Optional, start date and time of the event
    # @option opts [DateTime] :end_date_utc Optional, end date and time of the event
    # @option opts [DateTime] :updated_after_utc Optional, earliest date when event was last updated.
    # @option opts [BOOLEAN] :brief Optional, true if response should only contain top level properties of the event.
    # @option opts [Integer] :skip Optional, number of events to skip.
    # @option opts [Integer] :top Optional, maximum number of events to return in the response.
    # @option opts [BOOLEAN] :count_total Optional, true if total number of records should be returned in the response headers.
    # @return [Array<APICalendarEvent>]
    def get_events_by_search(opts = {})
      data, status_code, headers = get_events_by_search_with_http_info(opts)
      return data
    end

    # Gets a filtered list of Calendar Events.
    # Only one optional parameter (excluding top, skip and count_total) can be specified. Simple object graphs (excluding EVENTLINKS) are returned if \&quot;brief=true\&quot; is used in the query string.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :title Optional, event title.
    # @option opts [Integer] :owner_user_id Optional, id of the owner user.
    # @option opts [DateTime] :start_date_utc Optional, start date and time of the event
    # @option opts [DateTime] :end_date_utc Optional, end date and time of the event
    # @option opts [DateTime] :updated_after_utc Optional, earliest date when event was last updated.
    # @option opts [BOOLEAN] :brief Optional, true if response should only contain top level properties of the event.
    # @option opts [Integer] :skip Optional, number of events to skip.
    # @option opts [Integer] :top Optional, maximum number of events to return in the response.
    # @option opts [BOOLEAN] :count_total Optional, true if total number of records should be returned in the response headers.
    # @return [Array<(Array<APICalendarEvent>, Fixnum, Hash)>] Array<APICalendarEvent> data, response status code and response headers
    def get_events_by_search_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EventsApi#get_events_by_search ..."
      end
      
      # resource path
      path = "/Events/Search".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'title'] = opts[:'title'] if opts[:'title']
      query_params[:'owner_user_id'] = opts[:'owner_user_id'] if opts[:'owner_user_id']
      query_params[:'start_date_utc'] = opts[:'start_date_utc'] if opts[:'start_date_utc']
      query_params[:'end_date_utc'] = opts[:'end_date_utc'] if opts[:'end_date_utc']
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
        :return_type => 'Array<APICalendarEvent>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EventsApi#get_events_by_search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets a Calendar Event
    # 
    # @param id An Event&#39;s ID
    # @param [Hash] opts the optional parameters
    # @return [APICalendarEvent]
    def get_event(id, opts = {})
      data, status_code, headers = get_event_with_http_info(id, opts)
      return data
    end

    # Gets a Calendar Event
    # 
    # @param id An Event&#39;s ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(APICalendarEvent, Fixnum, Hash)>] APICalendarEvent data, response status code and response headers
    def get_event_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EventsApi#get_event ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling get_event" if id.nil?
      
      # resource path
      path = "/Events/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'APICalendarEvent')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EventsApi#get_event\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes a Calendar Event
    # 
    # @param id An Event&#39;s ID
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_event(id, opts = {})
      delete_event_with_http_info(id, opts)
      return nil
    end

    # Deletes a Calendar Event
    # 
    # @param id An Event&#39;s ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_event_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EventsApi#delete_event ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling delete_event" if id.nil?
      
      # resource path
      path = "/Events/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: EventsApi#delete_event\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates an Event Link
    # 
    # @param id An Event&#39;s ID (EVENT_ID)
    # @param api_link The Event Link to add (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [APIEventLink]
    def update_event_link(id, api_link, opts = {})
      data, status_code, headers = update_event_link_with_http_info(id, api_link, opts)
      return data
    end

    # Updates an Event Link
    # 
    # @param id An Event&#39;s ID (EVENT_ID)
    # @param api_link The Event Link to add (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [Array<(APIEventLink, Fixnum, Hash)>] APIEventLink data, response status code and response headers
    def update_event_link_with_http_info(id, api_link, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EventsApi#update_event_link ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling update_event_link" if id.nil?
      
      # verify the required parameter 'api_link' is set
      fail "Missing the required parameter 'api_link' when calling update_event_link" if api_link.nil?
      
      # resource path
      path = "/Events/{id}/EventLinks".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'APIEventLink')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EventsApi#update_event_link\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Adds an Event Link
    # 
    # @param id An Event&#39;s ID (EVENT_ID)
    # @param api_link The Event Link to add (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [APIEventLink]
    def add_event_link(id, api_link, opts = {})
      data, status_code, headers = add_event_link_with_http_info(id, api_link, opts)
      return data
    end

    # Adds an Event Link
    # 
    # @param id An Event&#39;s ID (EVENT_ID)
    # @param api_link The Event Link to add (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [Array<(APIEventLink, Fixnum, Hash)>] APIEventLink data, response status code and response headers
    def add_event_link_with_http_info(id, api_link, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EventsApi#add_event_link ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling add_event_link" if id.nil?
      
      # verify the required parameter 'api_link' is set
      fail "Missing the required parameter 'api_link' when calling add_event_link" if api_link.nil?
      
      # resource path
      path = "/Events/{id}/EventLinks".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'APIEventLink')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EventsApi#add_event_link\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes an Event Link
    # 
    # @param id An Event&#39;s ID (EVENT_ID)
    # @param link_id A EVENT Link&#39;s ID (EVENT_LINK_ID)
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_event_link(id, link_id, opts = {})
      delete_event_link_with_http_info(id, link_id, opts)
      return nil
    end

    # Deletes an Event Link
    # 
    # @param id An Event&#39;s ID (EVENT_ID)
    # @param link_id A EVENT Link&#39;s ID (EVENT_LINK_ID)
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_event_link_with_http_info(id, link_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EventsApi#delete_event_link ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling delete_event_link" if id.nil?
      
      # verify the required parameter 'link_id' is set
      fail "Missing the required parameter 'link_id' when calling delete_event_link" if link_id.nil?
      
      # resource path
      path = "/Events/{id}/EventLinks/{linkId}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s).sub('{' + 'linkId' + '}', link_id.to_s)

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
        @api_client.config.logger.debug "API called: EventsApi#delete_event_link\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end




