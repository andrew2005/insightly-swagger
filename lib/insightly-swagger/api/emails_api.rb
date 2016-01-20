require "uri"

module InsightlySwagger
  class EmailsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Gets a list of Emails.
    # Simple object graphs (excluding EMAILLINKS, TAGS, etc.) are returned if \&quot;brief=true\&quot; is used in the query string.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :brief Optional, true if response should only contain top level properties of the email.
    # @option opts [Integer] :skip Optional, number of emails to skip.
    # @option opts [Integer] :top Optional, maximum number of emails to return in the response.
    # @option opts [BOOLEAN] :count_total Optional, true if total number of records should be returned in the response headers.
    # @return [Array<APIEmail>]
    def get_emails(opts = {})
      data, status_code, headers = get_emails_with_http_info(opts)
      return data
    end

    # Gets a list of Emails.
    # Simple object graphs (excluding EMAILLINKS, TAGS, etc.) are returned if \&quot;brief=true\&quot; is used in the query string.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :brief Optional, true if response should only contain top level properties of the email.
    # @option opts [Integer] :skip Optional, number of emails to skip.
    # @option opts [Integer] :top Optional, maximum number of emails to return in the response.
    # @option opts [BOOLEAN] :count_total Optional, true if total number of records should be returned in the response headers.
    # @return [Array<(Array<APIEmail>, Fixnum, Hash)>] Array<APIEmail> data, response status code and response headers
    def get_emails_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EmailsApi#get_emails ..."
      end
      
      # resource path
      path = "/Emails".sub('{format}','json')

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
        :return_type => 'Array<APIEmail>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmailsApi#get_emails\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets a filtered list of Emails.
    # Only one optional parameter (excluding brief, top, skip and count_total) can be specified.             Simple object graphs (excluding EMAILLINKS, TAGS, etc.) are returned if \&quot;brief=true\&quot; is used in the query string.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :email_from Optional, from email address.
    # @option opts [String] :email_to Optional, to email address.
    # @option opts [String] :tag Optional, a single tag.
    # @option opts [DateTime] :updated_after_utc Optional, earliest date when email was last updated.
    # @option opts [BOOLEAN] :brief Optional, true if response should only contain top level properties of the email.
    # @option opts [Integer] :skip Optional, number of emails to skip.
    # @option opts [Integer] :top Optional, maximum number of emails to return in the response.
    # @option opts [BOOLEAN] :count_total Optional, true if total number of records should be returned in the response headers.
    # @return [Array<APIEmail>]
    def get_emails_by_search(opts = {})
      data, status_code, headers = get_emails_by_search_with_http_info(opts)
      return data
    end

    # Gets a filtered list of Emails.
    # Only one optional parameter (excluding brief, top, skip and count_total) can be specified.             Simple object graphs (excluding EMAILLINKS, TAGS, etc.) are returned if \&quot;brief=true\&quot; is used in the query string.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :email_from Optional, from email address.
    # @option opts [String] :email_to Optional, to email address.
    # @option opts [String] :tag Optional, a single tag.
    # @option opts [DateTime] :updated_after_utc Optional, earliest date when email was last updated.
    # @option opts [BOOLEAN] :brief Optional, true if response should only contain top level properties of the email.
    # @option opts [Integer] :skip Optional, number of emails to skip.
    # @option opts [Integer] :top Optional, maximum number of emails to return in the response.
    # @option opts [BOOLEAN] :count_total Optional, true if total number of records should be returned in the response headers.
    # @return [Array<(Array<APIEmail>, Fixnum, Hash)>] Array<APIEmail> data, response status code and response headers
    def get_emails_by_search_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EmailsApi#get_emails_by_search ..."
      end
      
      # resource path
      path = "/Emails/Search".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'email_from'] = opts[:'email_from'] if opts[:'email_from']
      query_params[:'email_to'] = opts[:'email_to'] if opts[:'email_to']
      query_params[:'tag'] = opts[:'tag'] if opts[:'tag']
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
        :return_type => 'Array<APIEmail>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmailsApi#get_emails_by_search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets an Email
    # 
    # @param id An Email&#39;s ID
    # @param [Hash] opts the optional parameters
    # @return [APIEmail]
    def get_email(id, opts = {})
      data, status_code, headers = get_email_with_http_info(id, opts)
      return data
    end

    # Gets an Email
    # 
    # @param id An Email&#39;s ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(APIEmail, Fixnum, Hash)>] APIEmail data, response status code and response headers
    def get_email_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EmailsApi#get_email ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling get_email" if id.nil?
      
      # resource path
      path = "/Emails/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'APIEmail')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmailsApi#get_email\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets an Email&#39;s Comments
    # 
    # @param id An Emails&#39;s ID (EMAIL_ID)
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

    # Gets an Email&#39;s Comments
    # 
    # @param id An Emails&#39;s ID (EMAIL_ID)
    # @param [Hash] opts the optional parameters
    # @option opts [DateTime] :updated_after_utc Optional, earliest date when comment was last updated.
    # @option opts [Integer] :skip Optional, number of comments to skip.
    # @option opts [Integer] :top Optional, maximum number of comments to return in the response.
    # @option opts [BOOLEAN] :count_total true if total number of records should be returned in the response headers.
    # @return [Array<(Array<APIComment>, Fixnum, Hash)>] Array<APIComment> data, response status code and response headers
    def get_comments_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EmailsApi#get_comments ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling get_comments" if id.nil?
      
      # resource path
      path = "/Emails/{id}/Comments".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: EmailsApi#get_comments\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Adds a Comment to an email.
    # 
    # @param id An Email&#39;s ID (EMAIL_ID)
    # @param api_comment The Comment to add (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [APIComment]
    def add_comment(id, api_comment, opts = {})
      data, status_code, headers = add_comment_with_http_info(id, api_comment, opts)
      return data
    end

    # Adds a Comment to an email.
    # 
    # @param id An Email&#39;s ID (EMAIL_ID)
    # @param api_comment The Comment to add (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [Array<(APIComment, Fixnum, Hash)>] APIComment data, response status code and response headers
    def add_comment_with_http_info(id, api_comment, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EmailsApi#add_comment ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling add_comment" if id.nil?
      
      # verify the required parameter 'api_comment' is set
      fail "Missing the required parameter 'api_comment' when calling add_comment" if api_comment.nil?
      
      # resource path
      path = "/Emails/{id}/Comments".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: EmailsApi#add_comment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates an Email Link
    # 
    # @param id A Email&#39;s ID (EMAIL_ID)
    # @param api_link The Email Link to update (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [APIEmailLink]
    def update_email_link(id, api_link, opts = {})
      data, status_code, headers = update_email_link_with_http_info(id, api_link, opts)
      return data
    end

    # Updates an Email Link
    # 
    # @param id A Email&#39;s ID (EMAIL_ID)
    # @param api_link The Email Link to update (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [Array<(APIEmailLink, Fixnum, Hash)>] APIEmailLink data, response status code and response headers
    def update_email_link_with_http_info(id, api_link, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EmailsApi#update_email_link ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling update_email_link" if id.nil?
      
      # verify the required parameter 'api_link' is set
      fail "Missing the required parameter 'api_link' when calling update_email_link" if api_link.nil?
      
      # resource path
      path = "/Emails/{id}/EmailLinks".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'APIEmailLink')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmailsApi#update_email_link\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Adds an Email Link
    # 
    # @param id An Email&#39;s ID (EMAIL_ID)
    # @param api_link The Email Link to add (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [APIEmailLink]
    def add_email_link(id, api_link, opts = {})
      data, status_code, headers = add_email_link_with_http_info(id, api_link, opts)
      return data
    end

    # Adds an Email Link
    # 
    # @param id An Email&#39;s ID (EMAIL_ID)
    # @param api_link The Email Link to add (just include JSON object as request body)
    # @param [Hash] opts the optional parameters
    # @return [Array<(APIEmailLink, Fixnum, Hash)>] APIEmailLink data, response status code and response headers
    def add_email_link_with_http_info(id, api_link, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EmailsApi#add_email_link ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling add_email_link" if id.nil?
      
      # verify the required parameter 'api_link' is set
      fail "Missing the required parameter 'api_link' when calling add_email_link" if api_link.nil?
      
      # resource path
      path = "/Emails/{id}/EmailLinks".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'APIEmailLink')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmailsApi#add_email_link\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes an Email Link
    # 
    # @param id An Email&#39;s ID (EMAIL_ID)
    # @param link_id An Email Link&#39;s ID (EMAIL_LINK_ID)
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_email_link(id, link_id, opts = {})
      delete_email_link_with_http_info(id, link_id, opts)
      return nil
    end

    # Deletes an Email Link
    # 
    # @param id An Email&#39;s ID (EMAIL_ID)
    # @param link_id An Email Link&#39;s ID (EMAIL_LINK_ID)
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_email_link_with_http_info(id, link_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EmailsApi#delete_email_link ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling delete_email_link" if id.nil?
      
      # verify the required parameter 'link_id' is set
      fail "Missing the required parameter 'link_id' when calling delete_email_link" if link_id.nil?
      
      # resource path
      path = "/Emails/{id}/EmailLinks/{linkId}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s).sub('{' + 'linkId' + '}', link_id.to_s)

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
        @api_client.config.logger.debug "API called: EmailsApi#delete_email_link\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets an Email&#39;s File Attachments
    # 
    # @param id An Email&#39;s ID (EMAIL_ID)
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

    # Gets an Email&#39;s File Attachments
    # 
    # @param id An Email&#39;s ID (EMAIL_ID)
    # @param [Hash] opts the optional parameters
    # @option opts [DateTime] :updated_after_utc Optional, earliest date when file attachment was last updated.
    # @option opts [Integer] :skip Optional, number of file attachments to skip.
    # @option opts [Integer] :top Optional, maximum number of file attachments to return in the response.
    # @option opts [BOOLEAN] :count_total true if total number of records should be returned in the response headers.
    # @return [Array<(Array<APIFileAttachment>, Fixnum, Hash)>] Array<APIFileAttachment> data, response status code and response headers
    def get_file_attachments_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EmailsApi#get_file_attachments ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling get_file_attachments" if id.nil?
      
      # resource path
      path = "/Emails/{id}/FileAttachments".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: EmailsApi#get_file_attachments\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets a Follow record for the Email
    # 
    # @param id An Email&#39;s ID (EMAIL_ID)
    # @param [Hash] opts the optional parameters
    # @return [APIFollow]
    def get_follow(id, opts = {})
      data, status_code, headers = get_follow_with_http_info(id, opts)
      return data
    end

    # Gets a Follow record for the Email
    # 
    # @param id An Email&#39;s ID (EMAIL_ID)
    # @param [Hash] opts the optional parameters
    # @return [Array<(APIFollow, Fixnum, Hash)>] APIFollow data, response status code and response headers
    def get_follow_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EmailsApi#get_follow ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling get_follow" if id.nil?
      
      # resource path
      path = "/Emails/{id}/Follow".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: EmailsApi#get_follow\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Start following an Email
    # 
    # @param id An Email&#39;s ID (EMAIL_ID)
    # @param [Hash] opts the optional parameters
    # @return [APIFollow]
    def add_follow(id, opts = {})
      data, status_code, headers = add_follow_with_http_info(id, opts)
      return data
    end

    # Start following an Email
    # 
    # @param id An Email&#39;s ID (EMAIL_ID)
    # @param [Hash] opts the optional parameters
    # @return [Array<(APIFollow, Fixnum, Hash)>] APIFollow data, response status code and response headers
    def add_follow_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EmailsApi#add_follow ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling add_follow" if id.nil?
      
      # resource path
      path = "/Emails/{id}/Follow".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: EmailsApi#add_follow\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Stop following an Email
    # 
    # @param id An Email&#39;s ID (EMAIL_ID)
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_follow(id, opts = {})
      delete_follow_with_http_info(id, opts)
      return nil
    end

    # Stop following an Email
    # 
    # @param id An Email&#39;s ID (EMAIL_ID)
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_follow_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EmailsApi#delete_follow ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling delete_follow" if id.nil?
      
      # resource path
      path = "/Emails/{id}/Follow".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: EmailsApi#delete_follow\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Adds a Tag for an Email
    # 
    # @param id An Email&#39;s ID (EMAIL_ID)
    # @param api_tag The Tag to add
    # @param [Hash] opts the optional parameters
    # @return [APITag]
    def add_tag(id, api_tag, opts = {})
      data, status_code, headers = add_tag_with_http_info(id, api_tag, opts)
      return data
    end

    # Adds a Tag for an Email
    # 
    # @param id An Email&#39;s ID (EMAIL_ID)
    # @param api_tag The Tag to add
    # @param [Hash] opts the optional parameters
    # @return [Array<(APITag, Fixnum, Hash)>] APITag data, response status code and response headers
    def add_tag_with_http_info(id, api_tag, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EmailsApi#add_tag ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling add_tag" if id.nil?
      
      # verify the required parameter 'api_tag' is set
      fail "Missing the required parameter 'api_tag' when calling add_tag" if api_tag.nil?
      
      # resource path
      path = "/Emails/{id}/Tags".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(api_tag)
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'APITag')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmailsApi#add_tag\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes a Tag from an Email
    # 
    # @param id An Email&#39;s ID (EMAIL_ID)
    # @param tag_name A Tag&#39;s name
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_tag(id, tag_name, opts = {})
      delete_tag_with_http_info(id, tag_name, opts)
      return nil
    end

    # Deletes a Tag from an Email
    # 
    # @param id An Email&#39;s ID (EMAIL_ID)
    # @param tag_name A Tag&#39;s name
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_tag_with_http_info(id, tag_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: EmailsApi#delete_tag ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling delete_tag" if id.nil?
      
      # verify the required parameter 'tag_name' is set
      fail "Missing the required parameter 'tag_name' when calling delete_tag" if tag_name.nil?
      
      # resource path
      path = "/Emails/{id}/Tags/{tagName}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s).sub('{' + 'tagName' + '}', tag_name.to_s)

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
        @api_client.config.logger.debug "API called: EmailsApi#delete_tag\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end




