=begin
#Tripletex API



OpenAPI spec version: 2.69.5

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.24

=end

require 'uri'

module TripletexRubyClient
  class DeliveryAddressApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get address by ID.
    # 
    # @param id Element ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields Fields filter pattern
    # @return [ResponseWrapperDeliveryAddress]
    def get(id, opts = {})
      data, _status_code, _headers = get_with_http_info(id, opts)
      data
    end

    # Get address by ID.
    # 
    # @param id Element ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields Fields filter pattern
    # @return [Array<(ResponseWrapperDeliveryAddress, Fixnum, Hash)>] ResponseWrapperDeliveryAddress data, response status code and response headers
    def get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DeliveryAddressApi.get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling DeliveryAddressApi.get"
      end
      # resource path
      local_var_path = '/deliveryAddress/{id}'.sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'ResponseWrapperDeliveryAddress')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DeliveryAddressApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update address.
    # 
    # @param id Element ID
    # @param [Hash] opts the optional parameters
    # @option opts [DeliveryAddress] :body Partial object describing what should be updated
    # @return [ResponseWrapperDeliveryAddress]
    def put(id, opts = {})
      data, _status_code, _headers = put_with_http_info(id, opts)
      data
    end

    # Update address.
    # 
    # @param id Element ID
    # @param [Hash] opts the optional parameters
    # @option opts [DeliveryAddress] :body Partial object describing what should be updated
    # @return [Array<(ResponseWrapperDeliveryAddress, Fixnum, Hash)>] ResponseWrapperDeliveryAddress data, response status code and response headers
    def put_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DeliveryAddressApi.put ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling DeliveryAddressApi.put"
      end
      # resource path
      local_var_path = '/deliveryAddress/{id}'.sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'ResponseWrapperDeliveryAddress')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DeliveryAddressApi#put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Find addresses corresponding with sent data.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :id List of IDs
    # @option opts [String] :address_line1 List of IDs
    # @option opts [String] :address_line2 List of IDs
    # @option opts [String] :postal_code List of IDs
    # @option opts [String] :city List of IDs
    # @option opts [String] :name List of IDs
    # @option opts [Integer] :from From index (default to 0)
    # @option opts [Integer] :count Number of elements to return (default to 1000)
    # @option opts [String] :sorting Sorting pattern
    # @option opts [String] :fields Fields filter pattern
    # @return [ListResponseDeliveryAddress]
    def search(opts = {})
      data, _status_code, _headers = search_with_http_info(opts)
      data
    end

    # Find addresses corresponding with sent data.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :id List of IDs
    # @option opts [String] :address_line1 List of IDs
    # @option opts [String] :address_line2 List of IDs
    # @option opts [String] :postal_code List of IDs
    # @option opts [String] :city List of IDs
    # @option opts [String] :name List of IDs
    # @option opts [Integer] :from From index
    # @option opts [Integer] :count Number of elements to return
    # @option opts [String] :sorting Sorting pattern
    # @option opts [String] :fields Fields filter pattern
    # @return [Array<(ListResponseDeliveryAddress, Fixnum, Hash)>] ListResponseDeliveryAddress data, response status code and response headers
    def search_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DeliveryAddressApi.search ...'
      end
      # resource path
      local_var_path = '/deliveryAddress'

      # query parameters
      query_params = {}
      query_params[:'id'] = opts[:'id'] if !opts[:'id'].nil?
      query_params[:'addressLine1'] = opts[:'address_line1'] if !opts[:'address_line1'].nil?
      query_params[:'addressLine2'] = opts[:'address_line2'] if !opts[:'address_line2'].nil?
      query_params[:'postalCode'] = opts[:'postal_code'] if !opts[:'postal_code'].nil?
      query_params[:'city'] = opts[:'city'] if !opts[:'city'].nil?
      query_params[:'name'] = opts[:'name'] if !opts[:'name'].nil?
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
        :return_type => 'ListResponseDeliveryAddress')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DeliveryAddressApi#search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
