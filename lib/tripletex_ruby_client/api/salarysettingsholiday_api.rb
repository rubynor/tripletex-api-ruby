=begin
#Tripletex API



OpenAPI spec version: 2.69.5

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.24

=end

require 'uri'

module TripletexRubyClient
  class SalarysettingsholidayApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # [BETA] delete multiple holiday settings of current logged in company.
    # 
    # @param ids ID of the elements
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_by_ids(ids, opts = {})
      delete_by_ids_with_http_info(ids, opts)
      nil
    end

    # [BETA] delete multiple holiday settings of current logged in company.
    # 
    # @param ids ID of the elements
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_by_ids_with_http_info(ids, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SalarysettingsholidayApi.delete_by_ids ...'
      end
      # verify the required parameter 'ids' is set
      if @api_client.config.client_side_validation && ids.nil?
        fail ArgumentError, "Missing the required parameter 'ids' when calling SalarysettingsholidayApi.delete_by_ids"
      end
      # resource path
      local_var_path = '/salary/settings/holiday/list'

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
        @api_client.config.logger.debug "API called: SalarysettingsholidayApi#delete_by_ids\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # [BETA] Create a holiday setting of current logged in company.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [CompanyHoliday] :body JSON representing the new object to be created. Should not have ID and version set.
    # @return [ResponseWrapperCompanyHoliday]
    def post(opts = {})
      data, _status_code, _headers = post_with_http_info(opts)
      data
    end

    # [BETA] Create a holiday setting of current logged in company.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [CompanyHoliday] :body JSON representing the new object to be created. Should not have ID and version set.
    # @return [Array<(ResponseWrapperCompanyHoliday, Fixnum, Hash)>] ResponseWrapperCompanyHoliday data, response status code and response headers
    def post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SalarysettingsholidayApi.post ...'
      end
      # resource path
      local_var_path = '/salary/settings/holiday'

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
        :return_type => 'ResponseWrapperCompanyHoliday')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SalarysettingsholidayApi#post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # [BETA] Create multiple holiday settings of current logged in company.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<CompanyHoliday>] :body JSON representing a list of new object to be created. Should not have ID and version set.
    # @return [ListResponseCompanyHoliday]
    def post_list(opts = {})
      data, _status_code, _headers = post_list_with_http_info(opts)
      data
    end

    # [BETA] Create multiple holiday settings of current logged in company.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<CompanyHoliday>] :body JSON representing a list of new object to be created. Should not have ID and version set.
    # @return [Array<(ListResponseCompanyHoliday, Fixnum, Hash)>] ListResponseCompanyHoliday data, response status code and response headers
    def post_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SalarysettingsholidayApi.post_list ...'
      end
      # resource path
      local_var_path = '/salary/settings/holiday/list'

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
        :return_type => 'ListResponseCompanyHoliday')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SalarysettingsholidayApi#post_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # [BETA] update a holiday setting of current logged in company.
    # 
    # @param id Element ID
    # @param [Hash] opts the optional parameters
    # @option opts [CompanyHoliday] :body Partial object describing what should be updated
    # @return [ResponseWrapperCompanyHoliday]
    def put(id, opts = {})
      data, _status_code, _headers = put_with_http_info(id, opts)
      data
    end

    # [BETA] update a holiday setting of current logged in company.
    # 
    # @param id Element ID
    # @param [Hash] opts the optional parameters
    # @option opts [CompanyHoliday] :body Partial object describing what should be updated
    # @return [Array<(ResponseWrapperCompanyHoliday, Fixnum, Hash)>] ResponseWrapperCompanyHoliday data, response status code and response headers
    def put_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SalarysettingsholidayApi.put ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SalarysettingsholidayApi.put"
      end
      # resource path
      local_var_path = '/salary/settings/holiday/{id}'.sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'ResponseWrapperCompanyHoliday')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SalarysettingsholidayApi#put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # [BETA] update multiple holiday settings of current logged in company.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<CompanyHoliday>] :body JSON representing updates to object. Should have ID and version set.
    # @return [ListResponseCompanyHoliday]
    def put_list(opts = {})
      data, _status_code, _headers = put_list_with_http_info(opts)
      data
    end

    # [BETA] update multiple holiday settings of current logged in company.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<CompanyHoliday>] :body JSON representing updates to object. Should have ID and version set.
    # @return [Array<(ListResponseCompanyHoliday, Fixnum, Hash)>] ListResponseCompanyHoliday data, response status code and response headers
    def put_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SalarysettingsholidayApi.put_list ...'
      end
      # resource path
      local_var_path = '/salary/settings/holiday/list'

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
        :return_type => 'ListResponseCompanyHoliday')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SalarysettingsholidayApi#put_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # [BETA] Find holiday settings of current logged in company.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :from From index (default to 0)
    # @option opts [Integer] :count Number of elements to return (default to 1000)
    # @option opts [String] :sorting Sorting pattern
    # @option opts [String] :fields Fields filter pattern
    # @return [ListResponseCompanyHoliday]
    def search(opts = {})
      data, _status_code, _headers = search_with_http_info(opts)
      data
    end

    # [BETA] Find holiday settings of current logged in company.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :from From index
    # @option opts [Integer] :count Number of elements to return
    # @option opts [String] :sorting Sorting pattern
    # @option opts [String] :fields Fields filter pattern
    # @return [Array<(ListResponseCompanyHoliday, Fixnum, Hash)>] ListResponseCompanyHoliday data, response status code and response headers
    def search_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SalarysettingsholidayApi.search ...'
      end
      # resource path
      local_var_path = '/salary/settings/holiday'

      # query parameters
      query_params = {}
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
        :return_type => 'ListResponseCompanyHoliday')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SalarysettingsholidayApi#search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
