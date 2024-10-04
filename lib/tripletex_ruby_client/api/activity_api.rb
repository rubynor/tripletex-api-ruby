=begin
#Tripletex API



OpenAPI spec version: 2.69.5

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.24

=end

require 'uri'

module TripletexRubyClient
  class ActivityApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Find activity by ID.
    # 
    # @param id Element ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields Fields filter pattern
    # @return [ResponseWrapperActivity]
    def get(id, opts = {})
      data, _status_code, _headers = get_with_http_info(id, opts)
      data
    end

    # Find activity by ID.
    # 
    # @param id Element ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields Fields filter pattern
    # @return [Array<(ResponseWrapperActivity, Fixnum, Hash)>] ResponseWrapperActivity data, response status code and response headers
    def get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ActivityApi.get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ActivityApi.get"
      end
      # resource path
      local_var_path = '/activity/{id}'.sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'ResponseWrapperActivity')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ActivityApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Find applicable time sheet activities for an employee on a specific day.
    # 
    # @param project_id Project ID
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :employee_id Employee ID. Defaults to ID of token owner.
    # @option opts [String] :date yyyy-MM-dd. Defaults to today.
    # @option opts [Integer] :from From index (default to 0)
    # @option opts [Integer] :count Number of elements to return (default to 1000)
    # @option opts [String] :sorting Sorting pattern
    # @option opts [String] :fields Fields filter pattern
    # @return [ListResponseActivity]
    def get_for_time_sheet(project_id, opts = {})
      data, _status_code, _headers = get_for_time_sheet_with_http_info(project_id, opts)
      data
    end

    # Find applicable time sheet activities for an employee on a specific day.
    # 
    # @param project_id Project ID
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :employee_id Employee ID. Defaults to ID of token owner.
    # @option opts [String] :date yyyy-MM-dd. Defaults to today.
    # @option opts [Integer] :from From index
    # @option opts [Integer] :count Number of elements to return
    # @option opts [String] :sorting Sorting pattern
    # @option opts [String] :fields Fields filter pattern
    # @return [Array<(ListResponseActivity, Fixnum, Hash)>] ListResponseActivity data, response status code and response headers
    def get_for_time_sheet_with_http_info(project_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ActivityApi.get_for_time_sheet ...'
      end
      # verify the required parameter 'project_id' is set
      if @api_client.config.client_side_validation && project_id.nil?
        fail ArgumentError, "Missing the required parameter 'project_id' when calling ActivityApi.get_for_time_sheet"
      end
      # resource path
      local_var_path = '/activity/>forTimeSheet'

      # query parameters
      query_params = {}
      query_params[:'projectId'] = project_id
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
        :return_type => 'ListResponseActivity')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ActivityApi#get_for_time_sheet\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Add activity.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Activity] :body JSON representing the new object to be created. Should not have ID and version set.
    # @return [ResponseWrapperActivity]
    def post(opts = {})
      data, _status_code, _headers = post_with_http_info(opts)
      data
    end

    # Add activity.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Activity] :body JSON representing the new object to be created. Should not have ID and version set.
    # @return [Array<(ResponseWrapperActivity, Fixnum, Hash)>] ResponseWrapperActivity data, response status code and response headers
    def post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ActivityApi.post ...'
      end
      # resource path
      local_var_path = '/activity'

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
        :return_type => 'ResponseWrapperActivity')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ActivityApi#post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Add multiple activities.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<Activity>] :body JSON representing a list of new object to be created. Should not have ID and version set.
    # @return [ListResponseActivity]
    def post_list(opts = {})
      data, _status_code, _headers = post_list_with_http_info(opts)
      data
    end

    # Add multiple activities.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<Activity>] :body JSON representing a list of new object to be created. Should not have ID and version set.
    # @return [Array<(ListResponseActivity, Fixnum, Hash)>] ListResponseActivity data, response status code and response headers
    def post_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ActivityApi.post_list ...'
      end
      # resource path
      local_var_path = '/activity/list'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

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
        :return_type => 'ListResponseActivity')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ActivityApi#post_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Find activities corresponding with sent data.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :id List of IDs
    # @option opts [String] :name Containing
    # @option opts [String] :number Equals
    # @option opts [String] :description Containing
    # @option opts [BOOLEAN] :is_project_activity Equals
    # @option opts [BOOLEAN] :is_general Equals
    # @option opts [BOOLEAN] :is_chargeable Equals
    # @option opts [BOOLEAN] :is_task Equals
    # @option opts [BOOLEAN] :is_inactive Equals
    # @option opts [Integer] :from From index (default to 0)
    # @option opts [Integer] :count Number of elements to return (default to 1000)
    # @option opts [String] :sorting Sorting pattern
    # @option opts [String] :fields Fields filter pattern
    # @return [ListResponseActivity]
    def search(opts = {})
      data, _status_code, _headers = search_with_http_info(opts)
      data
    end

    # Find activities corresponding with sent data.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :id List of IDs
    # @option opts [String] :name Containing
    # @option opts [String] :number Equals
    # @option opts [String] :description Containing
    # @option opts [BOOLEAN] :is_project_activity Equals
    # @option opts [BOOLEAN] :is_general Equals
    # @option opts [BOOLEAN] :is_chargeable Equals
    # @option opts [BOOLEAN] :is_task Equals
    # @option opts [BOOLEAN] :is_inactive Equals
    # @option opts [Integer] :from From index
    # @option opts [Integer] :count Number of elements to return
    # @option opts [String] :sorting Sorting pattern
    # @option opts [String] :fields Fields filter pattern
    # @return [Array<(ListResponseActivity, Fixnum, Hash)>] ListResponseActivity data, response status code and response headers
    def search_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ActivityApi.search ...'
      end
      # resource path
      local_var_path = '/activity'

      # query parameters
      query_params = {}
      query_params[:'id'] = opts[:'id'] if !opts[:'id'].nil?
      query_params[:'name'] = opts[:'name'] if !opts[:'name'].nil?
      query_params[:'number'] = opts[:'number'] if !opts[:'number'].nil?
      query_params[:'description'] = opts[:'description'] if !opts[:'description'].nil?
      query_params[:'isProjectActivity'] = opts[:'is_project_activity'] if !opts[:'is_project_activity'].nil?
      query_params[:'isGeneral'] = opts[:'is_general'] if !opts[:'is_general'].nil?
      query_params[:'isChargeable'] = opts[:'is_chargeable'] if !opts[:'is_chargeable'].nil?
      query_params[:'isTask'] = opts[:'is_task'] if !opts[:'is_task'].nil?
      query_params[:'isInactive'] = opts[:'is_inactive'] if !opts[:'is_inactive'].nil?
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
        :return_type => 'ListResponseActivity')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ActivityApi#search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
