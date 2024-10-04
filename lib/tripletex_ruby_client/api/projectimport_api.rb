=begin
#Tripletex API



OpenAPI spec version: 2.69.5

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.24

=end

require 'uri'

module TripletexRubyClient
  class ProjectimportApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Upload project import file.
    # 
    # @param file_format File format
    # @param file The project import file
    # @param [Hash] opts the optional parameters
    # @option opts [String] :encoding Encoding
    # @option opts [String] :delimiter Delimiter
    # @option opts [BOOLEAN] :ignore_first_row Ignore first row
    # @return [ListResponseProject]
    def import_project_statement(file_format, file, opts = {})
      data, _status_code, _headers = import_project_statement_with_http_info(file_format, file, opts)
      data
    end

    # Upload project import file.
    # 
    # @param file_format File format
    # @param file The project import file
    # @param [Hash] opts the optional parameters
    # @option opts [String] :encoding Encoding
    # @option opts [String] :delimiter Delimiter
    # @option opts [BOOLEAN] :ignore_first_row Ignore first row
    # @return [Array<(ListResponseProject, Fixnum, Hash)>] ListResponseProject data, response status code and response headers
    def import_project_statement_with_http_info(file_format, file, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProjectimportApi.import_project_statement ...'
      end
      # verify the required parameter 'file_format' is set
      if @api_client.config.client_side_validation && file_format.nil?
        fail ArgumentError, "Missing the required parameter 'file_format' when calling ProjectimportApi.import_project_statement"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['XLS', 'CSV'].include?(file_format)
        fail ArgumentError, "invalid value for 'file_format', must be one of XLS, CSV"
      end
      # verify the required parameter 'file' is set
      if @api_client.config.client_side_validation && file.nil?
        fail ArgumentError, "Missing the required parameter 'file' when calling ProjectimportApi.import_project_statement"
      end
      # resource path
      local_var_path = '/project/import'

      # query parameters
      query_params = {}
      query_params[:'fileFormat'] = file_format
      query_params[:'encoding'] = opts[:'encoding'] if !opts[:'encoding'].nil?
      query_params[:'delimiter'] = opts[:'delimiter'] if !opts[:'delimiter'].nil?
      query_params[:'ignoreFirstRow'] = opts[:'ignore_first_row'] if !opts[:'ignore_first_row'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params['file'] = file

      # http body (model)
      post_body = nil
      auth_names = ['tokenAuthScheme']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ListResponseProject')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProjectimportApi#import_project_statement\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
