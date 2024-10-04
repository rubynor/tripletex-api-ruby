=begin
#Tripletex API



OpenAPI spec version: 2.69.5

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.24

=end

require 'uri'

module TripletexRubyClient
  class ProjectApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # [BETA] Delete project.
    # 
    # @param id Element ID
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete(id, opts = {})
      delete_with_http_info(id, opts)
      nil
    end

    # [BETA] Delete project.
    # 
    # @param id Element ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProjectApi.delete ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ProjectApi.delete"
      end
      # resource path
      local_var_path = '/project/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['tokenAuthScheme']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProjectApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # [BETA] Delete projects.
    # 
    # @param ids ID of the elements
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_by_ids(ids, opts = {})
      delete_by_ids_with_http_info(ids, opts)
      nil
    end

    # [BETA] Delete projects.
    # 
    # @param ids ID of the elements
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_by_ids_with_http_info(ids, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProjectApi.delete_by_ids ...'
      end
      # verify the required parameter 'ids' is set
      if @api_client.config.client_side_validation && ids.nil?
        fail ArgumentError, "Missing the required parameter 'ids' when calling ProjectApi.delete_by_ids"
      end
      # resource path
      local_var_path = '/project/list'

      # query parameters
      query_params = {}
      query_params[:'ids'] = ids

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['tokenAuthScheme']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProjectApi#delete_by_ids\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # [BETA] Delete multiple projects.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<Project>] :body JSON representing objects to delete. Should have ID and version set.
    # @return [nil]
    def delete_list(opts = {})
      delete_list_with_http_info(opts)
      nil
    end

    # [BETA] Delete multiple projects.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<Project>] :body JSON representing objects to delete. Should have ID and version set.
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProjectApi.delete_list ...'
      end
      # resource path
      local_var_path = '/project'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json; charset=utf-8'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'body'])
      auth_names = ['tokenAuthScheme']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProjectApi#delete_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Find project by ID.
    # 
    # @param id Element ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields Fields filter pattern
    # @return [ResponseWrapperProject]
    def get(id, opts = {})
      data, _status_code, _headers = get_with_http_info(id, opts)
      data
    end

    # Find project by ID.
    # 
    # @param id Element ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields Fields filter pattern
    # @return [Array<(ResponseWrapperProject, Fixnum, Hash)>] ResponseWrapperProject data, response status code and response headers
    def get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProjectApi.get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ProjectApi.get"
      end
      # resource path
      local_var_path = '/project/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'fields'] = opts[:'fields'] if !opts[:'fields'].nil?

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['tokenAuthScheme']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ResponseWrapperProject')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProjectApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Find projects applicable for time sheet registration on a specific day.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :employee_id Employee ID. Defaults to ID of token owner.
    # @option opts [String] :date yyyy-MM-dd. Defaults to today.
    # @option opts [Integer] :from From index (default to 0)
    # @option opts [Integer] :count Number of elements to return (default to 1000)
    # @option opts [String] :sorting Sorting pattern
    # @option opts [String] :fields Fields filter pattern
    # @return [ListResponseProject]
    def get_for_time_sheet(opts = {})
      data, _status_code, _headers = get_for_time_sheet_with_http_info(opts)
      data
    end

    # Find projects applicable for time sheet registration on a specific day.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :employee_id Employee ID. Defaults to ID of token owner.
    # @option opts [String] :date yyyy-MM-dd. Defaults to today.
    # @option opts [Integer] :from From index
    # @option opts [Integer] :count Number of elements to return
    # @option opts [String] :sorting Sorting pattern
    # @option opts [String] :fields Fields filter pattern
    # @return [Array<(ListResponseProject, Fixnum, Hash)>] ListResponseProject data, response status code and response headers
    def get_for_time_sheet_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProjectApi.get_for_time_sheet ...'
      end
      # resource path
      local_var_path = '/project/>forTimeSheet'

      # query parameters
      query_params = {}
      query_params[:'employeeId'] = opts[:'employee_id'] if !opts[:'employee_id'].nil?
      query_params[:'date'] = opts[:'date'] if !opts[:'date'].nil?
      query_params[:'from'] = opts[:'from'] if !opts[:'from'].nil?
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?
      query_params[:'sorting'] = opts[:'sorting'] if !opts[:'sorting'].nil?
      query_params[:'fields'] = opts[:'fields'] if !opts[:'fields'].nil?

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['tokenAuthScheme']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ListResponseProject')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProjectApi#get_for_time_sheet\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # [BETA] Add new project.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Project] :body JSON representing the new object to be created. Should not have ID and version set.
    # @return [ResponseWrapperProject]
    def post(opts = {})
      data, _status_code, _headers = post_with_http_info(opts)
      data
    end

    # [BETA] Add new project.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Project] :body JSON representing the new object to be created. Should not have ID and version set.
    # @return [Array<(ResponseWrapperProject, Fixnum, Hash)>] ResponseWrapperProject data, response status code and response headers
    def post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProjectApi.post ...'
      end
      # resource path
      local_var_path = '/project'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json; charset=utf-8'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'body'])
      auth_names = ['tokenAuthScheme']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ResponseWrapperProject')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProjectApi#post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # [BETA] Register new projects. Multiple projects for different users can be sent in the same request.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<Project>] :body JSON representing a list of new object to be created. Should not have ID and version set.
    # @return [ListResponseProject]
    def post_list(opts = {})
      data, _status_code, _headers = post_list_with_http_info(opts)
      data
    end

    # [BETA] Register new projects. Multiple projects for different users can be sent in the same request.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<Project>] :body JSON representing a list of new object to be created. Should not have ID and version set.
    # @return [Array<(ListResponseProject, Fixnum, Hash)>] ListResponseProject data, response status code and response headers
    def post_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProjectApi.post_list ...'
      end
      # resource path
      local_var_path = '/project/list'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json; charset=utf-8'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'body'])
      auth_names = ['tokenAuthScheme']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ListResponseProject')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProjectApi#post_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # [BETA] Update project.
    # 
    # @param id Element ID
    # @param [Hash] opts the optional parameters
    # @option opts [Project] :body Partial object describing what should be updated
    # @return [ResponseWrapperProject]
    def put(id, opts = {})
      data, _status_code, _headers = put_with_http_info(id, opts)
      data
    end

    # [BETA] Update project.
    # 
    # @param id Element ID
    # @param [Hash] opts the optional parameters
    # @option opts [Project] :body Partial object describing what should be updated
    # @return [Array<(ResponseWrapperProject, Fixnum, Hash)>] ResponseWrapperProject data, response status code and response headers
    def put_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProjectApi.put ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ProjectApi.put"
      end
      # resource path
      local_var_path = '/project/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json; charset=utf-8'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'body'])
      auth_names = ['tokenAuthScheme']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ResponseWrapperProject')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProjectApi#put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # [BETA] Update multiple projects.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<Project>] :body JSON representing updates to object. Should have ID and version set.
    # @return [ListResponseProject]
    def put_list(opts = {})
      data, _status_code, _headers = put_list_with_http_info(opts)
      data
    end

    # [BETA] Update multiple projects.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<Project>] :body JSON representing updates to object. Should have ID and version set.
    # @return [Array<(ListResponseProject, Fixnum, Hash)>] ListResponseProject data, response status code and response headers
    def put_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProjectApi.put_list ...'
      end
      # resource path
      local_var_path = '/project/list'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json; charset=utf-8'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'body'])
      auth_names = ['tokenAuthScheme']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ListResponseProject')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProjectApi#put_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Find projects corresponding with sent data.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :id List of IDs
    # @option opts [String] :name Containing
    # @option opts [String] :number Equals
    # @option opts [BOOLEAN] :is_offer Equals
    # @option opts [String] :project_manager_id List of IDs
    # @option opts [String] :employee_in_project_id List of IDs
    # @option opts [String] :department_id List of IDs
    # @option opts [String] :start_date_from From and including
    # @option opts [String] :start_date_to To and excluding
    # @option opts [String] :end_date_from From and including
    # @option opts [String] :end_date_to To and excluding
    # @option opts [BOOLEAN] :is_closed Equals
    # @option opts [String] :customer_id Equals
    # @option opts [String] :external_accounts_number Containing
    # @option opts [Integer] :from From index (default to 0)
    # @option opts [Integer] :count Number of elements to return (default to 1000)
    # @option opts [String] :sorting Sorting pattern
    # @option opts [String] :fields Fields filter pattern
    # @return [ListResponseProject]
    def search(opts = {})
      data, _status_code, _headers = search_with_http_info(opts)
      data
    end

    # Find projects corresponding with sent data.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :id List of IDs
    # @option opts [String] :name Containing
    # @option opts [String] :number Equals
    # @option opts [BOOLEAN] :is_offer Equals
    # @option opts [String] :project_manager_id List of IDs
    # @option opts [String] :employee_in_project_id List of IDs
    # @option opts [String] :department_id List of IDs
    # @option opts [String] :start_date_from From and including
    # @option opts [String] :start_date_to To and excluding
    # @option opts [String] :end_date_from From and including
    # @option opts [String] :end_date_to To and excluding
    # @option opts [BOOLEAN] :is_closed Equals
    # @option opts [String] :customer_id Equals
    # @option opts [String] :external_accounts_number Containing
    # @option opts [Integer] :from From index
    # @option opts [Integer] :count Number of elements to return
    # @option opts [String] :sorting Sorting pattern
    # @option opts [String] :fields Fields filter pattern
    # @return [Array<(ListResponseProject, Fixnum, Hash)>] ListResponseProject data, response status code and response headers
    def search_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProjectApi.search ...'
      end
      # resource path
      local_var_path = '/project'

      # query parameters
      query_params = {}
      query_params[:'id'] = opts[:'id'] if !opts[:'id'].nil?
      query_params[:'name'] = opts[:'name'] if !opts[:'name'].nil?
      query_params[:'number'] = opts[:'number'] if !opts[:'number'].nil?
      query_params[:'isOffer'] = opts[:'is_offer'] if !opts[:'is_offer'].nil?
      query_params[:'projectManagerId'] = opts[:'project_manager_id'] if !opts[:'project_manager_id'].nil?
      query_params[:'employeeInProjectId'] = opts[:'employee_in_project_id'] if !opts[:'employee_in_project_id'].nil?
      query_params[:'departmentId'] = opts[:'department_id'] if !opts[:'department_id'].nil?
      query_params[:'startDateFrom'] = opts[:'start_date_from'] if !opts[:'start_date_from'].nil?
      query_params[:'startDateTo'] = opts[:'start_date_to'] if !opts[:'start_date_to'].nil?
      query_params[:'endDateFrom'] = opts[:'end_date_from'] if !opts[:'end_date_from'].nil?
      query_params[:'endDateTo'] = opts[:'end_date_to'] if !opts[:'end_date_to'].nil?
      query_params[:'isClosed'] = opts[:'is_closed'] if !opts[:'is_closed'].nil?
      query_params[:'customerId'] = opts[:'customer_id'] if !opts[:'customer_id'].nil?
      query_params[:'externalAccountsNumber'] = opts[:'external_accounts_number'] if !opts[:'external_accounts_number'].nil?
      query_params[:'from'] = opts[:'from'] if !opts[:'from'].nil?
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?
      query_params[:'sorting'] = opts[:'sorting'] if !opts[:'sorting'].nil?
      query_params[:'fields'] = opts[:'fields'] if !opts[:'fields'].nil?

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['tokenAuthScheme']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ListResponseProject')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProjectApi#search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
