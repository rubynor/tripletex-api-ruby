=begin
#Tripletex API



OpenAPI spec version: 2.69.5

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.24

=end

require 'uri'

module TripletexRubyClient
  class TimesheetmonthApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # approve month(s).  If id is provided the other args are ignored
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id Element ID
    # @option opts [String] :employee_ids List of IDs. Defaults to ID of token owner.
    # @option opts [String] :month_year 2020-01
    # @option opts [String] :approved_until_date yyyy-MM-dd. Defaults to today.. Defaults to end of month
    # @return [ListResponseMonthlyStatus]
    def approve(opts = {})
      data, _status_code, _headers = approve_with_http_info(opts)
      data
    end

    # approve month(s).  If id is provided the other args are ignored
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id Element ID
    # @option opts [String] :employee_ids List of IDs. Defaults to ID of token owner.
    # @option opts [String] :month_year 2020-01
    # @option opts [String] :approved_until_date yyyy-MM-dd. Defaults to today.. Defaults to end of month
    # @return [Array<(ListResponseMonthlyStatus, Fixnum, Hash)>] ListResponseMonthlyStatus data, response status code and response headers
    def approve_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TimesheetmonthApi.approve ...'
      end
      # resource path
      local_var_path = '/timesheet/month/:approve'

      # query parameters
      query_params = {}
      query_params[:'id'] = opts[:'id'] if !opts[:'id'].nil?
      query_params[:'employeeIds'] = opts[:'employee_ids'] if !opts[:'employee_ids'].nil?
      query_params[:'monthYear'] = opts[:'month_year'] if !opts[:'month_year'].nil?
      query_params[:'approvedUntilDate'] = opts[:'approved_until_date'] if !opts[:'approved_until_date'].nil?

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['tokenAuthScheme']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ListResponseMonthlyStatus')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TimesheetmonthApi#approve\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # complete month(s).  If id is provided the other args are ignored
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id Element ID
    # @option opts [String] :employee_ids List of IDs. Defaults to ID of token owner.
    # @option opts [String] :month_year 2020-01
    # @return [ListResponseMonthlyStatus]
    def complete(opts = {})
      data, _status_code, _headers = complete_with_http_info(opts)
      data
    end

    # complete month(s).  If id is provided the other args are ignored
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id Element ID
    # @option opts [String] :employee_ids List of IDs. Defaults to ID of token owner.
    # @option opts [String] :month_year 2020-01
    # @return [Array<(ListResponseMonthlyStatus, Fixnum, Hash)>] ListResponseMonthlyStatus data, response status code and response headers
    def complete_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TimesheetmonthApi.complete ...'
      end
      # resource path
      local_var_path = '/timesheet/month/:complete'

      # query parameters
      query_params = {}
      query_params[:'id'] = opts[:'id'] if !opts[:'id'].nil?
      query_params[:'employeeIds'] = opts[:'employee_ids'] if !opts[:'employee_ids'].nil?
      query_params[:'monthYear'] = opts[:'month_year'] if !opts[:'month_year'].nil?

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['tokenAuthScheme']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ListResponseMonthlyStatus')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TimesheetmonthApi#complete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Find monthly status entry by ID.
    # 
    # @param id Element ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields Fields filter pattern
    # @return [ResponseWrapperMonthlyStatus]
    def get(id, opts = {})
      data, _status_code, _headers = get_with_http_info(id, opts)
      data
    end

    # Find monthly status entry by ID.
    # 
    # @param id Element ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields Fields filter pattern
    # @return [Array<(ResponseWrapperMonthlyStatus, Fixnum, Hash)>] ResponseWrapperMonthlyStatus data, response status code and response headers
    def get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TimesheetmonthApi.get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TimesheetmonthApi.get"
      end
      # resource path
      local_var_path = '/timesheet/month/{id}'.sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'ResponseWrapperMonthlyStatus')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TimesheetmonthApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Find monthly status for given month.
    # 
    # @param employee_ids List of IDs. Defaults to ID of token owner.
    # @param month_year 2020-01
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :from From index (default to 0)
    # @option opts [Integer] :count Number of elements to return (default to 1000)
    # @option opts [String] :sorting Sorting pattern
    # @option opts [String] :fields Fields filter pattern
    # @return [ListResponseMonthlyStatus]
    def get_by_month_number(employee_ids, month_year, opts = {})
      data, _status_code, _headers = get_by_month_number_with_http_info(employee_ids, month_year, opts)
      data
    end

    # Find monthly status for given month.
    # 
    # @param employee_ids List of IDs. Defaults to ID of token owner.
    # @param month_year 2020-01
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :from From index
    # @option opts [Integer] :count Number of elements to return
    # @option opts [String] :sorting Sorting pattern
    # @option opts [String] :fields Fields filter pattern
    # @return [Array<(ListResponseMonthlyStatus, Fixnum, Hash)>] ListResponseMonthlyStatus data, response status code and response headers
    def get_by_month_number_with_http_info(employee_ids, month_year, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TimesheetmonthApi.get_by_month_number ...'
      end
      # verify the required parameter 'employee_ids' is set
      if @api_client.config.client_side_validation && employee_ids.nil?
        fail ArgumentError, "Missing the required parameter 'employee_ids' when calling TimesheetmonthApi.get_by_month_number"
      end
      # verify the required parameter 'month_year' is set
      if @api_client.config.client_side_validation && month_year.nil?
        fail ArgumentError, "Missing the required parameter 'month_year' when calling TimesheetmonthApi.get_by_month_number"
      end
      # resource path
      local_var_path = '/timesheet/month/byMonthNumber'

      # query parameters
      query_params = {}
      query_params[:'employeeIds'] = employee_ids
      query_params[:'monthYear'] = month_year
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
        :return_type => 'ListResponseMonthlyStatus')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TimesheetmonthApi#get_by_month_number\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # reopen month(s).  If id is provided the other args are ignored
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id Element ID
    # @option opts [String] :employee_ids List of IDs. Defaults to ID of token owner.
    # @option opts [String] :month_year 2020-01
    # @return [ListResponseMonthlyStatus]
    def reopen(opts = {})
      data, _status_code, _headers = reopen_with_http_info(opts)
      data
    end

    # reopen month(s).  If id is provided the other args are ignored
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id Element ID
    # @option opts [String] :employee_ids List of IDs. Defaults to ID of token owner.
    # @option opts [String] :month_year 2020-01
    # @return [Array<(ListResponseMonthlyStatus, Fixnum, Hash)>] ListResponseMonthlyStatus data, response status code and response headers
    def reopen_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TimesheetmonthApi.reopen ...'
      end
      # resource path
      local_var_path = '/timesheet/month/:reopen'

      # query parameters
      query_params = {}
      query_params[:'id'] = opts[:'id'] if !opts[:'id'].nil?
      query_params[:'employeeIds'] = opts[:'employee_ids'] if !opts[:'employee_ids'].nil?
      query_params[:'monthYear'] = opts[:'month_year'] if !opts[:'month_year'].nil?

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['tokenAuthScheme']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ListResponseMonthlyStatus')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TimesheetmonthApi#reopen\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # unapprove month(s).  If id is provided the other args are ignored
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id Element ID
    # @option opts [String] :employee_ids List of IDs. Defaults to ID of token owner.
    # @option opts [String] :month_year 2020-01
    # @return [ListResponseMonthlyStatus]
    def unapprove(opts = {})
      data, _status_code, _headers = unapprove_with_http_info(opts)
      data
    end

    # unapprove month(s).  If id is provided the other args are ignored
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id Element ID
    # @option opts [String] :employee_ids List of IDs. Defaults to ID of token owner.
    # @option opts [String] :month_year 2020-01
    # @return [Array<(ListResponseMonthlyStatus, Fixnum, Hash)>] ListResponseMonthlyStatus data, response status code and response headers
    def unapprove_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TimesheetmonthApi.unapprove ...'
      end
      # resource path
      local_var_path = '/timesheet/month/:unapprove'

      # query parameters
      query_params = {}
      query_params[:'id'] = opts[:'id'] if !opts[:'id'].nil?
      query_params[:'employeeIds'] = opts[:'employee_ids'] if !opts[:'employee_ids'].nil?
      query_params[:'monthYear'] = opts[:'month_year'] if !opts[:'month_year'].nil?

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['tokenAuthScheme']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ListResponseMonthlyStatus')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TimesheetmonthApi#unapprove\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
