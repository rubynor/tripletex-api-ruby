=begin
#Tripletex API



OpenAPI spec version: 2.69.5

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.24

=end

require 'spec_helper'
require 'json'

# Unit tests for TripletexRubyClient::ProjectimportApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ProjectimportApi' do
  before do
    # run before each test
    @instance = TripletexRubyClient::ProjectimportApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ProjectimportApi' do
    it 'should create an instance of ProjectimportApi' do
      expect(@instance).to be_instance_of(TripletexRubyClient::ProjectimportApi)
    end
  end

  # unit tests for import_project_statement
  # Upload project import file.
  # 
  # @param file_format File format
  # @param file The project import file
  # @param [Hash] opts the optional parameters
  # @option opts [String] :encoding Encoding
  # @option opts [String] :delimiter Delimiter
  # @option opts [BOOLEAN] :ignore_first_row Ignore first row
  # @return [ListResponseProject]
  describe 'import_project_statement test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
