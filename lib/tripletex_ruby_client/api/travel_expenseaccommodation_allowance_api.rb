=begin
#Tripletex API



OpenAPI spec version: 2.69.5

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.24

=end

require 'uri'

module TripletexRubyClient
  class TravelExpenseaccommodationAllowanceApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # [BETA] Delete accommodation allowance.
    # 
    # @param id Element ID
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete(id, opts = {})
      delete_with_http_info(id, opts)
      nil
    end

    # [BETA] Delete accommodation allowance.
    # 
    # @param id Element ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TravelExpenseaccommodationAllowanceApi.delete ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TravelExpenseaccommodationAllowanceApi.delete"
      end
      # resource path
      local_var_path = '/travelExpense/accommodationAllowance/{id}'.sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: TravelExpenseaccommodationAllowanceApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # [BETA] Get travel accommodation allowance by ID.
    # 
    # @param id Element ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields Fields filter pattern
    # @return [ResponseWrapperAccommodationAllowance]
    def get(id, opts = {})
      data, _status_code, _headers = get_with_http_info(id, opts)
      data
    end

    # [BETA] Get travel accommodation allowance by ID.
    # 
    # @param id Element ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields Fields filter pattern
    # @return [Array<(ResponseWrapperAccommodationAllowance, Fixnum, Hash)>] ResponseWrapperAccommodationAllowance data, response status code and response headers
    def get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TravelExpenseaccommodationAllowanceApi.get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TravelExpenseaccommodationAllowanceApi.get"
      end
      # resource path
      local_var_path = '/travelExpense/accommodationAllowance/{id}'.sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'ResponseWrapperAccommodationAllowance')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TravelExpenseaccommodationAllowanceApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # [BETA] Create accommodation allowance.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [AccommodationAllowance] :body JSON representing the new object to be created. Should not have ID and version set.
    # @return [ResponseWrapperAccommodationAllowance]
    def post(opts = {})
      data, _status_code, _headers = post_with_http_info(opts)
      data
    end

    # [BETA] Create accommodation allowance.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [AccommodationAllowance] :body JSON representing the new object to be created. Should not have ID and version set.
    # @return [Array<(ResponseWrapperAccommodationAllowance, Fixnum, Hash)>] ResponseWrapperAccommodationAllowance data, response status code and response headers
    def post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TravelExpenseaccommodationAllowanceApi.post ...'
      end
      # resource path
      local_var_path = '/travelExpense/accommodationAllowance'

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
        :return_type => 'ResponseWrapperAccommodationAllowance')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TravelExpenseaccommodationAllowanceApi#post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # [BETA] Update accommodation allowance.
    # 
    # @param id Element ID
    # @param [Hash] opts the optional parameters
    # @option opts [AccommodationAllowance] :body Partial object describing what should be updated
    # @return [ResponseWrapperAccommodationAllowance]
    def put(id, opts = {})
      data, _status_code, _headers = put_with_http_info(id, opts)
      data
    end

    # [BETA] Update accommodation allowance.
    # 
    # @param id Element ID
    # @param [Hash] opts the optional parameters
    # @option opts [AccommodationAllowance] :body Partial object describing what should be updated
    # @return [Array<(ResponseWrapperAccommodationAllowance, Fixnum, Hash)>] ResponseWrapperAccommodationAllowance data, response status code and response headers
    def put_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TravelExpenseaccommodationAllowanceApi.put ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TravelExpenseaccommodationAllowanceApi.put"
      end
      # resource path
      local_var_path = '/travelExpense/accommodationAllowance/{id}'.sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'ResponseWrapperAccommodationAllowance')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TravelExpenseaccommodationAllowanceApi#put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # [BETA] Find accommodation allowances corresponding with sent data.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :travel_expense_id Equals
    # @option opts [String] :rate_type_id Equals
    # @option opts [String] :rate_category_id Equals
    # @option opts [String] :rate_from From and including
    # @option opts [String] :rate_to To and excluding
    # @option opts [Integer] :count_from From and including
    # @option opts [Integer] :count_to To and excluding
    # @option opts [String] :amount_from From and including
    # @option opts [String] :amount_to To and excluding
    # @option opts [String] :location Containing
    # @option opts [String] :address Containing
    # @option opts [Integer] :from From index (default to 0)
    # @option opts [Integer] :count Number of elements to return (default to 1000)
    # @option opts [String] :sorting Sorting pattern
    # @option opts [String] :fields Fields filter pattern
    # @return [ListResponseAccommodationAllowance]
    def search(opts = {})
      data, _status_code, _headers = search_with_http_info(opts)
      data
    end

    # [BETA] Find accommodation allowances corresponding with sent data.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :travel_expense_id Equals
    # @option opts [String] :rate_type_id Equals
    # @option opts [String] :rate_category_id Equals
    # @option opts [String] :rate_from From and including
    # @option opts [String] :rate_to To and excluding
    # @option opts [Integer] :count_from From and including
    # @option opts [Integer] :count_to To and excluding
    # @option opts [String] :amount_from From and including
    # @option opts [String] :amount_to To and excluding
    # @option opts [String] :location Containing
    # @option opts [String] :address Containing
    # @option opts [Integer] :from From index
    # @option opts [Integer] :count Number of elements to return
    # @option opts [String] :sorting Sorting pattern
    # @option opts [String] :fields Fields filter pattern
    # @return [Array<(ListResponseAccommodationAllowance, Fixnum, Hash)>] ListResponseAccommodationAllowance data, response status code and response headers
    def search_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TravelExpenseaccommodationAllowanceApi.search ...'
      end
      # resource path
      local_var_path = '/travelExpense/accommodationAllowance'

      # query parameters
      query_params = {}
      query_params[:'travelExpenseId'] = opts[:'travel_expense_id'] if !opts[:'travel_expense_id'].nil?
      query_params[:'rateTypeId'] = opts[:'rate_type_id'] if !opts[:'rate_type_id'].nil?
      query_params[:'rateCategoryId'] = opts[:'rate_category_id'] if !opts[:'rate_category_id'].nil?
      query_params[:'rateFrom'] = opts[:'rate_from'] if !opts[:'rate_from'].nil?
      query_params[:'rateTo'] = opts[:'rate_to'] if !opts[:'rate_to'].nil?
      query_params[:'countFrom'] = opts[:'count_from'] if !opts[:'count_from'].nil?
      query_params[:'countTo'] = opts[:'count_to'] if !opts[:'count_to'].nil?
      query_params[:'amountFrom'] = opts[:'amount_from'] if !opts[:'amount_from'].nil?
      query_params[:'amountTo'] = opts[:'amount_to'] if !opts[:'amount_to'].nil?
      query_params[:'location'] = opts[:'location'] if !opts[:'location'].nil?
      query_params[:'address'] = opts[:'address'] if !opts[:'address'].nil?
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
        :return_type => 'ListResponseAccommodationAllowance')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TravelExpenseaccommodationAllowanceApi#search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
