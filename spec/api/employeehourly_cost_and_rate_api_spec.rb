=begin
#Tripletex API



OpenAPI spec version: 2.69.5

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.24

=end

require 'spec_helper'
require 'json'

# Unit tests for TripletexRubyClient::EmployeehourlyCostAndRateApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'EmployeehourlyCostAndRateApi' do
  before do
    # run before each test
    @instance = TripletexRubyClient::EmployeehourlyCostAndRateApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of EmployeehourlyCostAndRateApi' do
    it 'should create an instance of EmployeehourlyCostAndRateApi' do
      expect(@instance).to be_instance_of(TripletexRubyClient::EmployeehourlyCostAndRateApi)
    end
  end

  # unit tests for get
  # [BETA] Find hourly cost and rate by ID.
  # 
  # @param id Element ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :fields Fields filter pattern
  # @return [ResponseWrapperHourlyCostAndRate]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post
  # [BETA] Create hourly cost and rate.
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [HourlyCostAndRate] :body JSON representing the new object to be created. Should not have ID and version set.
  # @return [ResponseWrapperHourlyCostAndRate]
  describe 'post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for put
  # [BETA] Update hourly cost and rate. 
  # 
  # @param id Element ID
  # @param [Hash] opts the optional parameters
  # @option opts [HourlyCostAndRate] :body Partial object describing what should be updated
  # @return [ResponseWrapperHourlyCostAndRate]
  describe 'put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for search
  # Find all hourly cost and rates for employee.
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :employee_id Employee ID. Defaults to ID of token owner.
  # @option opts [Integer] :from From index
  # @option opts [Integer] :count Number of elements to return
  # @option opts [String] :sorting Sorting pattern
  # @option opts [String] :fields Fields filter pattern
  # @return [ListResponseHourlyCostAndRate]
  describe 'search test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
