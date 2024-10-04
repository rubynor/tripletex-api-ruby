=begin
#Tripletex API



OpenAPI spec version: 2.69.5

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.24

=end

require 'uri'

module TripletexRubyClient
  class CustomercategoryApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Find customer/supplier category by ID.
    # 
    # @param id Element ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields Fields filter pattern
    # @return [ResponseWrapperCustomerCategory]
    def get(id, opts = {})
      data, _status_code, _headers = get_with_http_info(id, opts)
      data
    end

    # Find customer/supplier category by ID.
    # 
    # @param id Element ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields Fields filter pattern
    # @return [Array<(ResponseWrapperCustomerCategory, Fixnum, Hash)>] ResponseWrapperCustomerCategory data, response status code and response headers
    def get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomercategoryApi.get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CustomercategoryApi.get"
      end
      # resource path
      local_var_path = '/customer/category/{id}'.sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'ResponseWrapperCustomerCategory')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomercategoryApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Add new customer/supplier category.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [CustomerCategory] :body JSON representing the new object to be created. Should not have ID and version set.
    # @return [ResponseWrapperCustomerCategory]
    def post(opts = {})
      data, _status_code, _headers = post_with_http_info(opts)
      data
    end

    # Add new customer/supplier category.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [CustomerCategory] :body JSON representing the new object to be created. Should not have ID and version set.
    # @return [Array<(ResponseWrapperCustomerCategory, Fixnum, Hash)>] ResponseWrapperCustomerCategory data, response status code and response headers
    def post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomercategoryApi.post ...'
      end
      # resource path
      local_var_path = '/customer/category'

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
        :return_type => 'ResponseWrapperCustomerCategory')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomercategoryApi#post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update customer/supplier category.
    # 
    # @param id Element ID
    # @param [Hash] opts the optional parameters
    # @option opts [CustomerCategory] :body Partial object describing what should be updated
    # @return [ResponseWrapperCustomerCategory]
    def put(id, opts = {})
      data, _status_code, _headers = put_with_http_info(id, opts)
      data
    end

    # Update customer/supplier category.
    # 
    # @param id Element ID
    # @param [Hash] opts the optional parameters
    # @option opts [CustomerCategory] :body Partial object describing what should be updated
    # @return [Array<(ResponseWrapperCustomerCategory, Fixnum, Hash)>] ResponseWrapperCustomerCategory data, response status code and response headers
    def put_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomercategoryApi.put ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CustomercategoryApi.put"
      end
      # resource path
      local_var_path = '/customer/category/{id}'.sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'ResponseWrapperCustomerCategory')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomercategoryApi#put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Find customer/supplier categories corresponding with sent data.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :id List of IDs
    # @option opts [String] :name Containing
    # @option opts [String] :number Equals
    # @option opts [String] :description Containing
    # @option opts [String] :type List of IDs
    # @option opts [Integer] :from From index (default to 0)
    # @option opts [Integer] :count Number of elements to return (default to 1000)
    # @option opts [String] :sorting Sorting pattern
    # @option opts [String] :fields Fields filter pattern
    # @return [ListResponseCustomerCategory]
    def search(opts = {})
      data, _status_code, _headers = search_with_http_info(opts)
      data
    end

    # Find customer/supplier categories corresponding with sent data.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :id List of IDs
    # @option opts [String] :name Containing
    # @option opts [String] :number Equals
    # @option opts [String] :description Containing
    # @option opts [String] :type List of IDs
    # @option opts [Integer] :from From index
    # @option opts [Integer] :count Number of elements to return
    # @option opts [String] :sorting Sorting pattern
    # @option opts [String] :fields Fields filter pattern
    # @return [Array<(ListResponseCustomerCategory, Fixnum, Hash)>] ListResponseCustomerCategory data, response status code and response headers
    def search_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomercategoryApi.search ...'
      end
      # resource path
      local_var_path = '/customer/category'

      # query parameters
      query_params = {}
      query_params[:'id'] = opts[:'id'] if !opts[:'id'].nil?
      query_params[:'name'] = opts[:'name'] if !opts[:'name'].nil?
      query_params[:'number'] = opts[:'number'] if !opts[:'number'].nil?
      query_params[:'description'] = opts[:'description'] if !opts[:'description'].nil?
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?
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
        :return_type => 'ListResponseCustomerCategory')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomercategoryApi#search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
