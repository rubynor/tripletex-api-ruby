=begin
#Tripletex API



OpenAPI spec version: 2.69.5

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.24

=end

require 'spec_helper'
require 'json'

# Unit tests for TripletexRubyClient::EmployeeemploymentApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'EmployeeemploymentApi' do
  before do
    # run before each test
    @instance = TripletexRubyClient::EmployeeemploymentApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of EmployeeemploymentApi' do
    it 'should create an instance of EmployeeemploymentApi' do
      expect(@instance).to be_instance_of(TripletexRubyClient::EmployeeemploymentApi)
    end
  end

  # unit tests for get
  # Find employment by ID.
  # 
  # @param id Element ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :fields Fields filter pattern
  # @return [ResponseWrapperEmployment]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post
  # [BETA] Create employment.
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [Employment] :body JSON representing the new object to be created. Should not have ID and version set.
  # @return [ResponseWrapperEmployment]
  describe 'post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for put
  # [BETA] Update employemnt. 
  # 
  # @param id Element ID
  # @param [Hash] opts the optional parameters
  # @option opts [Employment] :body Partial object describing what should be updated
  # @return [ResponseWrapperEmployment]
  describe 'put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for search
  # Find all employments for employee.
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :employee_id Element ID
  # @option opts [Integer] :from From index
  # @option opts [Integer] :count Number of elements to return
  # @option opts [String] :sorting Sorting pattern
  # @option opts [String] :fields Fields filter pattern
  # @return [ListResponseEmployment]
  describe 'search test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
