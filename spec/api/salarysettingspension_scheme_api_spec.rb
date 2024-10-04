=begin
#Tripletex API



OpenAPI spec version: 2.69.5

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.24

=end

require 'spec_helper'
require 'json'

# Unit tests for TripletexRubyClient::SalarysettingspensionSchemeApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SalarysettingspensionSchemeApi' do
  before do
    # run before each test
    @instance = TripletexRubyClient::SalarysettingspensionSchemeApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SalarysettingspensionSchemeApi' do
    it 'should create an instance of SalarysettingspensionSchemeApi' do
      expect(@instance).to be_instance_of(TripletexRubyClient::SalarysettingspensionSchemeApi)
    end
  end

  # unit tests for delete
  # [BETA] Delete a Pension Scheme
  # 
  # @param id Element ID
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_by_ids
  # [BETA] delete multiple Pension Schemes.
  # 
  # @param ids ID of the elements
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_by_ids test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get
  # [BETA] Get Pension Scheme for a specific ID
  # 
  # @param id Element ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :fields Fields filter pattern
  # @return [ResponseWrapperPensionScheme]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post
  # [BETA] Create a Pension Scheme.
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [PensionScheme] :body JSON representing the new object to be created. Should not have ID and version set.
  # @return [ResponseWrapperPensionScheme]
  describe 'post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_list
  # [BETA] Create multiple Pension Schemes.
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [Array<PensionScheme>] :body JSON representing a list of new object to be created. Should not have ID and version set.
  # @return [ListResponsePensionScheme]
  describe 'post_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for put
  # [BETA] Update a Pension Scheme
  # 
  # @param id Element ID
  # @param [Hash] opts the optional parameters
  # @option opts [PensionScheme] :body JSON representing the new object to be created. Should not have ID and version set.
  # @return [ResponseWrapperPensionScheme]
  describe 'put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for put_list
  # [BETA] update multiple Pension Schemes.
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [Array<PensionScheme>] :body JSON representing updates to object. Should have ID and version set.
  # @return [ListResponsePensionScheme]
  describe 'put_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for search
  # [BETA] Find pension schemes.
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :number Equals
  # @option opts [Integer] :from From index
  # @option opts [Integer] :count Number of elements to return
  # @option opts [String] :sorting Sorting pattern
  # @option opts [String] :fields Fields filter pattern
  # @return [ListResponsePensionScheme]
  describe 'search test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
