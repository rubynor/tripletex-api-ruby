=begin
#Tripletex API



OpenAPI spec version: 2.69.5

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.24

=end

require 'uri'

module TripletexRubyClient
  class ProjecthourlyRatesprojectSpecificRatesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete project specific rate 
    # 
    # @param id Element ID
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete(id, opts = {})
      delete_with_http_info(id, opts)
      nil
    end

    # Delete project specific rate 
    # 
    # @param id Element ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProjecthourlyRatesprojectSpecificRatesApi.delete ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ProjecthourlyRatesprojectSpecificRatesApi.delete"
      end
      # resource path
      local_var_path = '/project/hourlyRates/projectSpecificRates/{id}'.sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: ProjecthourlyRatesprojectSpecificRatesApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete project specific rates.
    # 
    # @param ids ID of the elements
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_by_ids(ids, opts = {})
      delete_by_ids_with_http_info(ids, opts)
      nil
    end

    # Delete project specific rates.
    # 
    # @param ids ID of the elements
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_by_ids_with_http_info(ids, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProjecthourlyRatesprojectSpecificRatesApi.delete_by_ids ...'
      end
      # verify the required parameter 'ids' is set
      if @api_client.config.client_side_validation && ids.nil?
        fail ArgumentError, "Missing the required parameter 'ids' when calling ProjecthourlyRatesprojectSpecificRatesApi.delete_by_ids"
      end
      # resource path
      local_var_path = '/project/hourlyRates/projectSpecificRates/list'

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
        @api_client.config.logger.debug "API called: ProjecthourlyRatesprojectSpecificRatesApi#delete_by_ids\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Find project specific rate by ID.
    # 
    # @param id Element ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields Fields filter pattern
    # @return [ResponseWrapperProjectSpecificRate]
    def get(id, opts = {})
      data, _status_code, _headers = get_with_http_info(id, opts)
      data
    end

    # Find project specific rate by ID.
    # 
    # @param id Element ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields Fields filter pattern
    # @return [Array<(ResponseWrapperProjectSpecificRate, Fixnum, Hash)>] ResponseWrapperProjectSpecificRate data, response status code and response headers
    def get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProjecthourlyRatesprojectSpecificRatesApi.get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ProjecthourlyRatesprojectSpecificRatesApi.get"
      end
      # resource path
      local_var_path = '/project/hourlyRates/projectSpecificRates/{id}'.sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'ResponseWrapperProjectSpecificRate')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProjecthourlyRatesprojectSpecificRatesApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create new project specific rate. 
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [ProjectSpecificRate] :body JSON representing the new object to be created. Should not have ID and version set.
    # @return [ResponseWrapperProjectSpecificRate]
    def post(opts = {})
      data, _status_code, _headers = post_with_http_info(opts)
      data
    end

    # Create new project specific rate. 
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [ProjectSpecificRate] :body JSON representing the new object to be created. Should not have ID and version set.
    # @return [Array<(ResponseWrapperProjectSpecificRate, Fixnum, Hash)>] ResponseWrapperProjectSpecificRate data, response status code and response headers
    def post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProjecthourlyRatesprojectSpecificRatesApi.post ...'
      end
      # resource path
      local_var_path = '/project/hourlyRates/projectSpecificRates'

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
        :return_type => 'ResponseWrapperProjectSpecificRate')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProjecthourlyRatesprojectSpecificRatesApi#post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create multiple new project specific rates.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<ProjectSpecificRate>] :body JSON representing a list of new object to be created. Should not have ID and version set.
    # @return [ListResponseProjectSpecificRate]
    def post_list(opts = {})
      data, _status_code, _headers = post_list_with_http_info(opts)
      data
    end

    # Create multiple new project specific rates.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<ProjectSpecificRate>] :body JSON representing a list of new object to be created. Should not have ID and version set.
    # @return [Array<(ListResponseProjectSpecificRate, Fixnum, Hash)>] ListResponseProjectSpecificRate data, response status code and response headers
    def post_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProjecthourlyRatesprojectSpecificRatesApi.post_list ...'
      end
      # resource path
      local_var_path = '/project/hourlyRates/projectSpecificRates/list'

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
        :return_type => 'ListResponseProjectSpecificRate')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProjecthourlyRatesprojectSpecificRatesApi#post_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update a project specific rate.
    # 
    # @param id Element ID
    # @param [Hash] opts the optional parameters
    # @option opts [ProjectSpecificRate] :body Partial object describing what should be updated
    # @return [ResponseWrapperProjectSpecificRate]
    def put(id, opts = {})
      data, _status_code, _headers = put_with_http_info(id, opts)
      data
    end

    # Update a project specific rate.
    # 
    # @param id Element ID
    # @param [Hash] opts the optional parameters
    # @option opts [ProjectSpecificRate] :body Partial object describing what should be updated
    # @return [Array<(ResponseWrapperProjectSpecificRate, Fixnum, Hash)>] ResponseWrapperProjectSpecificRate data, response status code and response headers
    def put_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProjecthourlyRatesprojectSpecificRatesApi.put ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ProjecthourlyRatesprojectSpecificRatesApi.put"
      end
      # resource path
      local_var_path = '/project/hourlyRates/projectSpecificRates/{id}'.sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'ResponseWrapperProjectSpecificRate')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProjecthourlyRatesprojectSpecificRatesApi#put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update multiple project specific rates.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<ProjectSpecificRate>] :body JSON representing updates to object. Should have ID and version set.
    # @return [ListResponseProjectSpecificRate]
    def put_list(opts = {})
      data, _status_code, _headers = put_list_with_http_info(opts)
      data
    end

    # Update multiple project specific rates.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<ProjectSpecificRate>] :body JSON representing updates to object. Should have ID and version set.
    # @return [Array<(ListResponseProjectSpecificRate, Fixnum, Hash)>] ListResponseProjectSpecificRate data, response status code and response headers
    def put_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProjecthourlyRatesprojectSpecificRatesApi.put_list ...'
      end
      # resource path
      local_var_path = '/project/hourlyRates/projectSpecificRates/list'

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
        :return_type => 'ListResponseProjectSpecificRate')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProjecthourlyRatesprojectSpecificRatesApi#put_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Find project specific rates corresponding with sent data.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :id List of IDs
    # @option opts [String] :project_hourly_rate_id List of IDs
    # @option opts [String] :employee_id List of IDs
    # @option opts [String] :activity_id List of IDs
    # @option opts [Integer] :from From index (default to 0)
    # @option opts [Integer] :count Number of elements to return (default to 1000)
    # @option opts [String] :sorting Sorting pattern
    # @option opts [String] :fields Fields filter pattern
    # @return [ListResponseProjectSpecificRate]
    def search(opts = {})
      data, _status_code, _headers = search_with_http_info(opts)
      data
    end

    # Find project specific rates corresponding with sent data.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :id List of IDs
    # @option opts [String] :project_hourly_rate_id List of IDs
    # @option opts [String] :employee_id List of IDs
    # @option opts [String] :activity_id List of IDs
    # @option opts [Integer] :from From index
    # @option opts [Integer] :count Number of elements to return
    # @option opts [String] :sorting Sorting pattern
    # @option opts [String] :fields Fields filter pattern
    # @return [Array<(ListResponseProjectSpecificRate, Fixnum, Hash)>] ListResponseProjectSpecificRate data, response status code and response headers
    def search_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProjecthourlyRatesprojectSpecificRatesApi.search ...'
      end
      # resource path
      local_var_path = '/project/hourlyRates/projectSpecificRates'

      # query parameters
      query_params = {}
      query_params[:'id'] = opts[:'id'] if !opts[:'id'].nil?
      query_params[:'projectHourlyRateId'] = opts[:'project_hourly_rate_id'] if !opts[:'project_hourly_rate_id'].nil?
      query_params[:'employeeId'] = opts[:'employee_id'] if !opts[:'employee_id'].nil?
      query_params[:'activityId'] = opts[:'activity_id'] if !opts[:'activity_id'].nil?
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
        :return_type => 'ListResponseProjectSpecificRate')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProjecthourlyRatesprojectSpecificRatesApi#search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
