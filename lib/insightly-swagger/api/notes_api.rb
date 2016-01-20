require "uri"

module InsightlySwagger
  class NotesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Gets a list of Notes.
    # Simple object graphs (excluding NOTELINKS) are returned if \&quot;brief=true\&quot; is used in the query string.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :brief Optional, true if response should only contain top level properties of the note.
    # @option opts [Integer] :skip Optional, number of notes to skip.
    # @option opts [Integer] :top Optional, maximum number of notes to return in the response.
    # @option opts [BOOLEAN] :count_total Optional, true if total number of records should be returned in the response headers.
    # @return [Array<APINote>]
    def get_notes(opts = {})
      data, status_code, headers = get_notes_with_http_info(opts)
      return data
    end

    # Gets a list of Notes.
    # Simple object graphs (excluding NOTELINKS) are returned if \&quot;brief=true\&quot; is used in the query string.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :brief Optional, true if response should only contain top level properties of the note.
    # @option opts [Integer] :skip Optional, number of notes to skip.
    # @option opts [Integer] :top Optional, maximum number of notes to return in the response.
    # @option opts [BOOLEAN] :count_total Optional, true if total number of records should be returned in the response headers.
    # @return [Array<(Array<APINote>, Fixnum, Hash)>] Array<APINote> data, response status code and response headers
    def get_notes_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: NotesApi#get_notes ..."
      end
      
      # resource path
      path = "/Notes".sub('{format}','json')

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
        :return_type => 'Array<APINote>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NotesApi#get_notes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates a Note
    # 
    # @param api_note The Note to add (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :brief Optional, true if you wish to do a partial update containing only top level properties of the Note. When true, all sub-collections are ignored.
    # @return [APINote]
    def update_note(api_note, opts = {})
      data, status_code, headers = update_note_with_http_info(api_note, opts)
      return data
    end

    # Updates a Note
    # 
    # @param api_note The Note to add (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :brief Optional, true if you wish to do a partial update containing only top level properties of the Note. When true, all sub-collections are ignored.
    # @return [Array<(APINote, Fixnum, Hash)>] APINote data, response status code and response headers
    def update_note_with_http_info(api_note, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: NotesApi#update_note ..."
      end
      
      # verify the required parameter 'api_note' is set
      fail "Missing the required parameter 'api_note' when calling update_note" if api_note.nil?
      
      # resource path
      path = "/Notes".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(api_note)
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'APINote')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NotesApi#update_note\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets a filtered list of Notes.
    # Only one optional parameter (excluding top, skip and count_total) can be specified. Simple object graphs (excluding NOTELINKS) are returned if \&quot;brief=true\&quot; is used in the query string.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :title Optional, note title.
    # @option opts [Integer] :owner_user_id Optional, id of the owner user.
    # @option opts [DateTime] :updated_after_utc Optional, earliest date when note was last updated.
    # @option opts [BOOLEAN] :brief Optional, true if response should only contain top level properties of the note.
    # @option opts [Integer] :skip Optional, number of notes to skip.
    # @option opts [Integer] :top Optional, maximum number of notes to return in the response.
    # @option opts [BOOLEAN] :count_total Optional, true if total number of records should be returned in the response headers.
    # @return [Array<APINote>]
    def get_notes_by_search(opts = {})
      data, status_code, headers = get_notes_by_search_with_http_info(opts)
      return data
    end

    # Gets a filtered list of Notes.
    # Only one optional parameter (excluding top, skip and count_total) can be specified. Simple object graphs (excluding NOTELINKS) are returned if \&quot;brief=true\&quot; is used in the query string.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :title Optional, note title.
    # @option opts [Integer] :owner_user_id Optional, id of the owner user.
    # @option opts [DateTime] :updated_after_utc Optional, earliest date when note was last updated.
    # @option opts [BOOLEAN] :brief Optional, true if response should only contain top level properties of the note.
    # @option opts [Integer] :skip Optional, number of notes to skip.
    # @option opts [Integer] :top Optional, maximum number of notes to return in the response.
    # @option opts [BOOLEAN] :count_total Optional, true if total number of records should be returned in the response headers.
    # @return [Array<(Array<APINote>, Fixnum, Hash)>] Array<APINote> data, response status code and response headers
    def get_notes_by_search_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: NotesApi#get_notes_by_search ..."
      end
      
      # resource path
      path = "/Notes/Search".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'title'] = opts[:'title'] if opts[:'title']
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
        :return_type => 'Array<APINote>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NotesApi#get_notes_by_search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets a Note
    # 
    # @param id A Note&#39;s ID
    # @param [Hash] opts the optional parameters
    # @return [APINote]
    def get_note(id, opts = {})
      data, status_code, headers = get_note_with_http_info(id, opts)
      return data
    end

    # Gets a Note
    # 
    # @param id A Note&#39;s ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(APINote, Fixnum, Hash)>] APINote data, response status code and response headers
    def get_note_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: NotesApi#get_note ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling get_note" if id.nil?
      
      # resource path
      path = "/Notes/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'APINote')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NotesApi#get_note\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes a Note
    # 
    # @param id A Note&#39;s ID
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_note(id, opts = {})
      delete_note_with_http_info(id, opts)
      return nil
    end

    # Deletes a Note
    # 
    # @param id A Note&#39;s ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_note_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: NotesApi#delete_note ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling delete_note" if id.nil?
      
      # resource path
      path = "/Notes/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: NotesApi#delete_note\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets a Note&#39;s Comments
    # 
    # @param id A Note&#39;s ID (NOTE_ID)
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

    # Gets a Note&#39;s Comments
    # 
    # @param id A Note&#39;s ID (NOTE_ID)
    # @param [Hash] opts the optional parameters
    # @option opts [DateTime] :updated_after_utc Optional, earliest date when comment was last updated.
    # @option opts [Integer] :skip Optional, number of comments to skip.
    # @option opts [Integer] :top Optional, maximum number of comments to return in the response.
    # @option opts [BOOLEAN] :count_total true if total number of records should be returned in the response headers.
    # @return [Array<(Array<APIComment>, Fixnum, Hash)>] Array<APIComment> data, response status code and response headers
    def get_comments_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: NotesApi#get_comments ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling get_comments" if id.nil?
      
      # resource path
      path = "/Notes/{id}/Comments".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: NotesApi#get_comments\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Adds a Comment to a Note
    # 
    # @param id A Note&#39;s ID (NOTE_ID)
    # @param api_comment The Comment to add (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [APIComment]
    def add_comment(id, api_comment, opts = {})
      data, status_code, headers = add_comment_with_http_info(id, api_comment, opts)
      return data
    end

    # Adds a Comment to a Note
    # 
    # @param id A Note&#39;s ID (NOTE_ID)
    # @param api_comment The Comment to add (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [Array<(APIComment, Fixnum, Hash)>] APIComment data, response status code and response headers
    def add_comment_with_http_info(id, api_comment, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: NotesApi#add_comment ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling add_comment" if id.nil?
      
      # verify the required parameter 'api_comment' is set
      fail "Missing the required parameter 'api_comment' when calling add_comment" if api_comment.nil?
      
      # resource path
      path = "/Notes/{id}/Comments".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: NotesApi#add_comment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets a Note&#39;s File Attachments
    # 
    # @param id A Note&#39;s ID (NOTE_ID)
    # @param [Hash] opts the optional parameters
    # @option opts [DateTime] :updated_after_utc Optional, earliest date when file attachment was last updated.
    # @option opts [Integer] :skip Optional, number of file attachments to skip.
    # @option opts [Integer] :top Optional, maximum number of file attachments to return in the response.
    # @option opts [BOOLEAN] :count_total true if total number of records should be returned in the response headers.
    # @return [Array<APIFileAttachment>]
    def get_file_attachments(id, opts = {})
      data, status_code, headers = get_file_attachments_with_http_info(id, opts)
      return data
    end

    # Gets a Note&#39;s File Attachments
    # 
    # @param id A Note&#39;s ID (NOTE_ID)
    # @param [Hash] opts the optional parameters
    # @option opts [DateTime] :updated_after_utc Optional, earliest date when file attachment was last updated.
    # @option opts [Integer] :skip Optional, number of file attachments to skip.
    # @option opts [Integer] :top Optional, maximum number of file attachments to return in the response.
    # @option opts [BOOLEAN] :count_total true if total number of records should be returned in the response headers.
    # @return [Array<(Array<APIFileAttachment>, Fixnum, Hash)>] Array<APIFileAttachment> data, response status code and response headers
    def get_file_attachments_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: NotesApi#get_file_attachments ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling get_file_attachments" if id.nil?
      
      # resource path
      path = "/Notes/{id}/FileAttachments".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Array<APIFileAttachment>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NotesApi#get_file_attachments\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Adds a File Attachment to a Note
    # 
    # @param id Note ID
    # @param file File and metadata to be attached to Note (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :file_name The name and extension of the File Attachment
    # @option opts [String] :content_type The MIME type of the File Attachment
    # @option opts [Integer] :file_category_id The category of the File Attachment, if it has been assigned to one
    # @return [APIFileAttachment]
    def add_file_attachment(id, file, opts = {})
      data, status_code, headers = add_file_attachment_with_http_info(id, file, opts)
      return data
    end

    # Adds a File Attachment to a Note
    # 
    # @param id Note ID
    # @param file File and metadata to be attached to Note (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :file_name The name and extension of the File Attachment
    # @option opts [String] :content_type The MIME type of the File Attachment
    # @option opts [Integer] :file_category_id The category of the File Attachment, if it has been assigned to one
    # @return [Array<(APIFileAttachment, Fixnum, Hash)>] APIFileAttachment data, response status code and response headers
    def add_file_attachment_with_http_info(id, file, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: NotesApi#add_file_attachment ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling add_file_attachment" if id.nil?
      
      # verify the required parameter 'file' is set
      fail "Missing the required parameter 'file' when calling add_file_attachment" if file.nil?
      
      # resource path
      path = "/Notes/{id}/FileAttachments".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json', 'text/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['multipart/form-data']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}
      form_params["file"] = file
      form_params["file_name"] = opts[:'file_name'] if opts[:'file_name']
      form_params["content_type"] = opts[:'content_type'] if opts[:'content_type']
      form_params["file_category_id"] = opts[:'file_category_id'] if opts[:'file_category_id']

      # http body (model)
      post_body = nil
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'APIFileAttachment')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NotesApi#add_file_attachment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets a Follow record for the Note
    # 
    # @param id A Note&#39;s ID (NOTE_ID)
    # @param [Hash] opts the optional parameters
    # @return [APIFollow]
    def get_follow(id, opts = {})
      data, status_code, headers = get_follow_with_http_info(id, opts)
      return data
    end

    # Gets a Follow record for the Note
    # 
    # @param id A Note&#39;s ID (NOTE_ID)
    # @param [Hash] opts the optional parameters
    # @return [Array<(APIFollow, Fixnum, Hash)>] APIFollow data, response status code and response headers
    def get_follow_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: NotesApi#get_follow ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling get_follow" if id.nil?
      
      # resource path
      path = "/Notes/{id}/Follow".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: NotesApi#get_follow\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Start following a Note
    # 
    # @param id A Note&#39;s ID (NOTE_ID)
    # @param [Hash] opts the optional parameters
    # @return [APIFollow]
    def add_follow(id, opts = {})
      data, status_code, headers = add_follow_with_http_info(id, opts)
      return data
    end

    # Start following a Note
    # 
    # @param id A Note&#39;s ID (NOTE_ID)
    # @param [Hash] opts the optional parameters
    # @return [Array<(APIFollow, Fixnum, Hash)>] APIFollow data, response status code and response headers
    def add_follow_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: NotesApi#add_follow ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling add_follow" if id.nil?
      
      # resource path
      path = "/Notes/{id}/Follow".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: NotesApi#add_follow\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Stop following a Note
    # 
    # @param id A Note&#39;s ID (NOTE_ID)
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_follow(id, opts = {})
      delete_follow_with_http_info(id, opts)
      return nil
    end

    # Stop following a Note
    # 
    # @param id A Note&#39;s ID (NOTE_ID)
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_follow_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: NotesApi#delete_follow ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling delete_follow" if id.nil?
      
      # resource path
      path = "/Notes/{id}/Follow".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: NotesApi#delete_follow\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates an Note Link
    # 
    # @param id A Note&#39;s ID (NOTE_ID)
    # @param api_link The Note Link to add (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [APINoteLink]
    def update_note_link(id, api_link, opts = {})
      data, status_code, headers = update_note_link_with_http_info(id, api_link, opts)
      return data
    end

    # Updates an Note Link
    # 
    # @param id A Note&#39;s ID (NOTE_ID)
    # @param api_link The Note Link to add (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [Array<(APINoteLink, Fixnum, Hash)>] APINoteLink data, response status code and response headers
    def update_note_link_with_http_info(id, api_link, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: NotesApi#update_note_link ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling update_note_link" if id.nil?
      
      # verify the required parameter 'api_link' is set
      fail "Missing the required parameter 'api_link' when calling update_note_link" if api_link.nil?
      
      # resource path
      path = "/Notes/{id}/NoteLinks".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'APINoteLink')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NotesApi#update_note_link\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Adds a Note Link
    # 
    # @param id A Note&#39;s ID (NOTE_ID)
    # @param api_link The Note Link to add (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [APINoteLink]
    def add_note_link(id, api_link, opts = {})
      data, status_code, headers = add_note_link_with_http_info(id, api_link, opts)
      return data
    end

    # Adds a Note Link
    # 
    # @param id A Note&#39;s ID (NOTE_ID)
    # @param api_link The Note Link to add (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [Array<(APINoteLink, Fixnum, Hash)>] APINoteLink data, response status code and response headers
    def add_note_link_with_http_info(id, api_link, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: NotesApi#add_note_link ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling add_note_link" if id.nil?
      
      # verify the required parameter 'api_link' is set
      fail "Missing the required parameter 'api_link' when calling add_note_link" if api_link.nil?
      
      # resource path
      path = "/Notes/{id}/NoteLinks".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'APINoteLink')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NotesApi#add_note_link\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes a Note Link
    # 
    # @param id A Note&#39;s ID (NOTE_ID)
    # @param link_id A Note Link&#39;s ID (NOTE_LINK_ID)
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_note_link(id, link_id, opts = {})
      delete_note_link_with_http_info(id, link_id, opts)
      return nil
    end

    # Deletes a Note Link
    # 
    # @param id A Note&#39;s ID (NOTE_ID)
    # @param link_id A Note Link&#39;s ID (NOTE_LINK_ID)
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_note_link_with_http_info(id, link_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: NotesApi#delete_note_link ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling delete_note_link" if id.nil?
      
      # verify the required parameter 'link_id' is set
      fail "Missing the required parameter 'link_id' when calling delete_note_link" if link_id.nil?
      
      # resource path
      path = "/Notes/{id}/NoteLinks/{linkId}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s).sub('{' + 'linkId' + '}', link_id.to_s)

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
        @api_client.config.logger.debug "API called: NotesApi#delete_note_link\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end




