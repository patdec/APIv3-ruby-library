=begin
#SendinBlue API

#SendinBlue provide a RESTFul API that can be used with any languages. With this API, you will be able to :   - Manage your campaigns and get the statistics   - Manage your contacts   - Send transactional Emails and SMS   - and much more...  You can download our wrappers at https://github.com/orgs/sendinblue  **Possible responses**   | Code | Message |   | :-------------: | ------------- |   | 200  | OK. Successful Request  |   | 201  | OK. Successful Creation |   | 202  | OK. Request accepted |   | 204  | OK. Successful Update/Deletion  |   | 400  | Error. Bad Request  |   | 401  | Error. Authentication Needed  |   | 402  | Error. Not enough credit, plan upgrade needed  |   | 403  | Error. Permission denied  |   | 404  | Error. Object does not exist |   | 405  | Error. Method not allowed  | 

OpenAPI spec version: 3.0.0
Contact: contact@sendinblue.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require "uri"

module SibApiV3Sdk
  class ListsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Add existing contacts to a list
    # 
    # @param list_id Id of the list
    # @param contact_emails Emails addresses of the contacts
    # @param [Hash] opts the optional parameters
    # @return [PostContactInfo]
    def add_contact_to_list(list_id, contact_emails, opts = {})
      data, _status_code, _headers = add_contact_to_list_with_http_info(list_id, contact_emails, opts)
      return data
    end

    # Add existing contacts to a list
    # 
    # @param list_id Id of the list
    # @param contact_emails Emails addresses of the contacts
    # @param [Hash] opts the optional parameters
    # @return [Array<(PostContactInfo, Fixnum, Hash)>] PostContactInfo data, response status code and response headers
    def add_contact_to_list_with_http_info(list_id, contact_emails, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ListsApi.add_contact_to_list ..."
      end
      # verify the required parameter 'list_id' is set
      if @api_client.config.client_side_validation && list_id.nil?
        fail ArgumentError, "Missing the required parameter 'list_id' when calling ListsApi.add_contact_to_list"
      end
      # verify the required parameter 'contact_emails' is set
      if @api_client.config.client_side_validation && contact_emails.nil?
        fail ArgumentError, "Missing the required parameter 'contact_emails' when calling ListsApi.add_contact_to_list"
      end
      # resource path
      local_var_path = "/contacts/lists/{listId}/contacts/add".sub('{' + 'listId' + '}', list_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(contact_emails)
      auth_names = ['api-key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PostContactInfo')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ListsApi#add_contact_to_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a list
    # 
    # @param create_list Values to create a list
    # @param [Hash] opts the optional parameters
    # @return [CreateModel]
    def create_list(create_list, opts = {})
      data, _status_code, _headers = create_list_with_http_info(create_list, opts)
      return data
    end

    # Create a list
    # 
    # @param create_list Values to create a list
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreateModel, Fixnum, Hash)>] CreateModel data, response status code and response headers
    def create_list_with_http_info(create_list, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ListsApi.create_list ..."
      end
      # verify the required parameter 'create_list' is set
      if @api_client.config.client_side_validation && create_list.nil?
        fail ArgumentError, "Missing the required parameter 'create_list' when calling ListsApi.create_list"
      end
      # resource path
      local_var_path = "/contacts/lists"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(create_list)
      auth_names = ['api-key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CreateModel')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ListsApi#create_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a list
    # 
    # @param list_id Id of the list
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_list(list_id, opts = {})
      delete_list_with_http_info(list_id, opts)
      return nil
    end

    # Delete a list
    # 
    # @param list_id Id of the list
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_list_with_http_info(list_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ListsApi.delete_list ..."
      end
      # verify the required parameter 'list_id' is set
      if @api_client.config.client_side_validation && list_id.nil?
        fail ArgumentError, "Missing the required parameter 'list_id' when calling ListsApi.delete_list"
      end
      # resource path
      local_var_path = "/contacts/lists/{listId}".sub('{' + 'listId' + '}', list_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api-key']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ListsApi#delete_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the contacts in a list
    # 
    # @param list_id Id of the list
    # @param [Hash] opts the optional parameters
    # @option opts [DateTime] :modified_since Filter (urlencoded) the contacts modified after a given UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ)
    # @option opts [Integer] :limit Number of documents per page (default to 50)
    # @option opts [Integer] :offset Index of the first document of the page (default to 0)
    # @return [GetContacts]
    def get_contacts_from_list(list_id, opts = {})
      data, _status_code, _headers = get_contacts_from_list_with_http_info(list_id, opts)
      return data
    end

    # Get the contacts in a list
    # 
    # @param list_id Id of the list
    # @param [Hash] opts the optional parameters
    # @option opts [DateTime] :modified_since Filter (urlencoded) the contacts modified after a given UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ)
    # @option opts [Integer] :limit Number of documents per page
    # @option opts [Integer] :offset Index of the first document of the page
    # @return [Array<(GetContacts, Fixnum, Hash)>] GetContacts data, response status code and response headers
    def get_contacts_from_list_with_http_info(list_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ListsApi.get_contacts_from_list ..."
      end
      # verify the required parameter 'list_id' is set
      if @api_client.config.client_side_validation && list_id.nil?
        fail ArgumentError, "Missing the required parameter 'list_id' when calling ListsApi.get_contacts_from_list"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 500
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ListsApi.get_contacts_from_list, must be smaller than or equal to 500.'
      end

      # resource path
      local_var_path = "/contacts/lists/{listId}/contacts".sub('{' + 'listId' + '}', list_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'modifiedSince'] = opts[:'modified_since'] if !opts[:'modified_since'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api-key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GetContacts')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ListsApi#get_contacts_from_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the lists in a folder
    # 
    # @param folder_id Id of the folder
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Number of documents per page (default to 10)
    # @option opts [Integer] :offset Index of the first document of the page (default to 0)
    # @return [GetFolderLists]
    def get_folder_lists(folder_id, opts = {})
      data, _status_code, _headers = get_folder_lists_with_http_info(folder_id, opts)
      return data
    end

    # Get the lists in a folder
    # 
    # @param folder_id Id of the folder
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Number of documents per page
    # @option opts [Integer] :offset Index of the first document of the page
    # @return [Array<(GetFolderLists, Fixnum, Hash)>] GetFolderLists data, response status code and response headers
    def get_folder_lists_with_http_info(folder_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ListsApi.get_folder_lists ..."
      end
      # verify the required parameter 'folder_id' is set
      if @api_client.config.client_side_validation && folder_id.nil?
        fail ArgumentError, "Missing the required parameter 'folder_id' when calling ListsApi.get_folder_lists"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 50
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ListsApi.get_folder_lists, must be smaller than or equal to 50.'
      end

      # resource path
      local_var_path = "/contacts/folders/{folderId}/lists".sub('{' + 'folderId' + '}', folder_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api-key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GetFolderLists')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ListsApi#get_folder_lists\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the details of a list
    # 
    # @param list_id Id of the list
    # @param [Hash] opts the optional parameters
    # @return [GetExtendedList]
    def get_list(list_id, opts = {})
      data, _status_code, _headers = get_list_with_http_info(list_id, opts)
      return data
    end

    # Get the details of a list
    # 
    # @param list_id Id of the list
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetExtendedList, Fixnum, Hash)>] GetExtendedList data, response status code and response headers
    def get_list_with_http_info(list_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ListsApi.get_list ..."
      end
      # verify the required parameter 'list_id' is set
      if @api_client.config.client_side_validation && list_id.nil?
        fail ArgumentError, "Missing the required parameter 'list_id' when calling ListsApi.get_list"
      end
      # resource path
      local_var_path = "/contacts/lists/{listId}".sub('{' + 'listId' + '}', list_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api-key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GetExtendedList')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ListsApi#get_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all the lists
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Number of documents per page (default to 10)
    # @option opts [Integer] :offset Index of the first document of the page (default to 0)
    # @return [GetLists]
    def get_lists(opts = {})
      data, _status_code, _headers = get_lists_with_http_info(opts)
      return data
    end

    # Get all the lists
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Number of documents per page
    # @option opts [Integer] :offset Index of the first document of the page
    # @return [Array<(GetLists, Fixnum, Hash)>] GetLists data, response status code and response headers
    def get_lists_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ListsApi.get_lists ..."
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 50
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ListsApi.get_lists, must be smaller than or equal to 50.'
      end

      # resource path
      local_var_path = "/contacts/lists"

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api-key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GetLists')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ListsApi#get_lists\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove existing contacts from a list
    # 
    # @param list_id Id of the list
    # @param contact_emails Emails adresses of the contact
    # @param [Hash] opts the optional parameters
    # @return [PostContactInfo]
    def remove_contact_to_list(list_id, contact_emails, opts = {})
      data, _status_code, _headers = remove_contact_to_list_with_http_info(list_id, contact_emails, opts)
      return data
    end

    # Remove existing contacts from a list
    # 
    # @param list_id Id of the list
    # @param contact_emails Emails adresses of the contact
    # @param [Hash] opts the optional parameters
    # @return [Array<(PostContactInfo, Fixnum, Hash)>] PostContactInfo data, response status code and response headers
    def remove_contact_to_list_with_http_info(list_id, contact_emails, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ListsApi.remove_contact_to_list ..."
      end
      # verify the required parameter 'list_id' is set
      if @api_client.config.client_side_validation && list_id.nil?
        fail ArgumentError, "Missing the required parameter 'list_id' when calling ListsApi.remove_contact_to_list"
      end
      # verify the required parameter 'contact_emails' is set
      if @api_client.config.client_side_validation && contact_emails.nil?
        fail ArgumentError, "Missing the required parameter 'contact_emails' when calling ListsApi.remove_contact_to_list"
      end
      # resource path
      local_var_path = "/contacts/lists/{listId}/contacts/remove".sub('{' + 'listId' + '}', list_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(contact_emails)
      auth_names = ['api-key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PostContactInfo')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ListsApi#remove_contact_to_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a list
    # 
    # @param list_id Id of the list
    # @param update_list Values to update a list
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def update_list(list_id, update_list, opts = {})
      update_list_with_http_info(list_id, update_list, opts)
      return nil
    end

    # Update a list
    # 
    # @param list_id Id of the list
    # @param update_list Values to update a list
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_list_with_http_info(list_id, update_list, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ListsApi.update_list ..."
      end
      # verify the required parameter 'list_id' is set
      if @api_client.config.client_side_validation && list_id.nil?
        fail ArgumentError, "Missing the required parameter 'list_id' when calling ListsApi.update_list"
      end
      # verify the required parameter 'update_list' is set
      if @api_client.config.client_side_validation && update_list.nil?
        fail ArgumentError, "Missing the required parameter 'update_list' when calling ListsApi.update_list"
      end
      # resource path
      local_var_path = "/contacts/lists/{listId}".sub('{' + 'listId' + '}', list_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(update_list)
      auth_names = ['api-key']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ListsApi#update_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
