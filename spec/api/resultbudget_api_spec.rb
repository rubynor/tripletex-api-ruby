=begin
#Tripletex API



OpenAPI spec version: 2.69.5

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.24

=end

require 'spec_helper'
require 'json'

# Unit tests for TripletexRubyClient::ResultbudgetApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ResultbudgetApi' do
  before do
    # run before each test
    @instance = TripletexRubyClient::ResultbudgetApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ResultbudgetApi' do
    it 'should create an instance of ResultbudgetApi' do
      expect(@instance).to be_instance_of(TripletexRubyClient::ResultbudgetApi)
    end
  end

  # unit tests for get_company_result_budget
  # Get result budget for company
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :year Must be between 1900-2100. Defaults to current year.
  # @option opts [Integer] :from From index
  # @option opts [Integer] :count Number of elements to return
  # @option opts [String] :sorting Sorting pattern
  # @option opts [String] :fields Fields filter pattern
  # @return [ListResponseResultBudget]
  describe 'get_company_result_budget test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_department_result_budget
  # Get result budget associated with a departmentId
  # 
  # @param id Element ID
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :year Must be between 1900-2100. Defaults to current year.
  # @option opts [Integer] :from From index
  # @option opts [Integer] :count Number of elements to return
  # @option opts [String] :sorting Sorting pattern
  # @option opts [String] :fields Fields filter pattern
  # @return [ListResponseResultBudget]
  describe 'get_department_result_budget test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_employee_result_budget
  # Get result budget associated with an employeeId
  # 
  # @param id Element ID
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :year Must be between 1900-2100. Defaults to current year.
  # @option opts [Integer] :from From index
  # @option opts [Integer] :count Number of elements to return
  # @option opts [String] :sorting Sorting pattern
  # @option opts [String] :fields Fields filter pattern
  # @return [ListResponseResultBudget]
  describe 'get_employee_result_budget test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_product_result_budget
  # Get result budget associated with a productId
  # 
  # @param id Element ID
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :year Must be between 1900-2100. Defaults to current year.
  # @option opts [Integer] :from From index
  # @option opts [Integer] :count Number of elements to return
  # @option opts [String] :sorting Sorting pattern
  # @option opts [String] :fields Fields filter pattern
  # @return [ListResponseResultBudget]
  describe 'get_product_result_budget test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_project_result_budget
  # Get result budget associated with a projectId
  # 
  # @param id Element ID
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :year Must be between 1900-2100. Defaults to current year.
  # @option opts [Integer] :from From index
  # @option opts [Integer] :count Number of elements to return
  # @option opts [String] :sorting Sorting pattern
  # @option opts [String] :fields Fields filter pattern
  # @return [ListResponseResultBudget]
  describe 'get_project_result_budget test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
