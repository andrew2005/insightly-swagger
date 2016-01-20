require "uri"

module InsightlySwagger
  class CommentsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Updates a Comment
    # 
    # @param api_comment The Comment to add
    # @param [Hash] opts the optional parameters
    # @return [APIComment]
    def update_comment(api_comment, opts = {})
      data, status_code, headers = update_comment_with_http_info(api_comment, opts)
      return data
    end

    # Updates a Comment
    # 
    # @param api_comment The Comment to add
    # @param [Hash] opts the optional parameters
    # @return [Array<(APIComment, Fixnum, Hash)>] APIComment data, response status code and response headers
    def update_comment_with_http_info(api_comment, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CommentsApi#update_comment ..."
      end
      
      # verify the required parameter 'api_comment' is set
      fail "Missing the required parameter 'api_comment' when calling update_comment" if api_comment.nil?
      
      # resource path
      path = "/Comments".sub('{format}','json')

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
      data, status_code, headers = @api_client.call_api(:PUT, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'APIComment')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CommentsApi#update_comment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets a Comment
    # 
    # @param id A Comments&#39;s ID
    # @param [Hash] opts the optional parameters
    # @return [APIComment]
    def get_comment(id, opts = {})
      data, status_code, headers = get_comment_with_http_info(id, opts)
      return data
    end

    # Gets a Comment
    # 
    # @param id A Comments&#39;s ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(APIComment, Fixnum, Hash)>] APIComment data, response status code and response headers
    def get_comment_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CommentsApi#get_comment ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling get_comment" if id.nil?
      
      # resource path
      path = "/Comments/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'APIComment')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CommentsApi#get_comment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes a Comment
    # 
    # @param id A Comment&#39;s ID
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_comment(id, opts = {})
      delete_comment_with_http_info(id, opts)
      return nil
    end

    # Deletes a Comment
    # 
    # @param id A Comment&#39;s ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_comment_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CommentsApi#delete_comment ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling delete_comment" if id.nil?
      
      # resource path
      path = "/Comments/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: CommentsApi#delete_comment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets a Comments&#39;s File Attachments
    # 
    # @param id A Comments&#39;s ID (COMMENT_ID)
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

    # Gets a Comments&#39;s File Attachments
    # 
    # @param id A Comments&#39;s ID (COMMENT_ID)
    # @param [Hash] opts the optional parameters
    # @option opts [DateTime] :updated_after_utc Optional, earliest date when file attachment was last updated.
    # @option opts [Integer] :skip Optional, number of file attachments to skip.
    # @option opts [Integer] :top Optional, maximum number of file attachments to return in the response.
    # @option opts [BOOLEAN] :count_total true if total number of records should be returned in the response headers.
    # @return [Array<(Array<APIFileAttachment>, Fixnum, Hash)>] Array<APIFileAttachment> data, response status code and response headers
    def get_file_attachments_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CommentsApi#get_file_attachments ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling get_file_attachments" if id.nil?
      
      # resource path
      path = "/Comments/{id}/FileAttachments".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: CommentsApi#get_file_attachments\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Adds a File Attachment to a Comment
    # 
    # @param id Comment ID
    # @param file File and metadata to be attached to Comment
    # @param [Hash] opts the optional parameters
    # @option opts [String] :file_name The name and extension of the File Attachment
    # @option opts [String] :content_type The MIME type of the File Attachment
    # @option opts [Integer] :file_category_id The category of the File Attachment, if it has been assigned to one
    # @return [APIFileAttachment]
    def add_file_attachment(id, file, opts = {})
      data, status_code, headers = add_file_attachment_with_http_info(id, file, opts)
      return data
    end

    # Adds a File Attachment to a Comment
    # 
    # @param id Comment ID
    # @param file File and metadata to be attached to Comment
    # @param [Hash] opts the optional parameters
    # @option opts [String] :file_name The name and extension of the File Attachment
    # @option opts [String] :content_type The MIME type of the File Attachment
    # @option opts [Integer] :file_category_id The category of the File Attachment, if it has been assigned to one
    # @return [Array<(APIFileAttachment, Fixnum, Hash)>] APIFileAttachment data, response status code and response headers
    def add_file_attachment_with_http_info(id, file, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CommentsApi#add_file_attachment ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling add_file_attachment" if id.nil?
      
      # verify the required parameter 'file' is set
      fail "Missing the required parameter 'file' when calling add_file_attachment" if file.nil?
      
      # resource path
      path = "/Comments/{id}/FileAttachments".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: CommentsApi#add_file_attachment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end




