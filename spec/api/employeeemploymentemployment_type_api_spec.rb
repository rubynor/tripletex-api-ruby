=begin
#Tripletex API



OpenAPI spec version: 2.69.5

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.24

=end

require 'spec_helper'
require 'json'

# Unit tests for TripletexRubyClient::EmployeeemploymentemploymentTypeApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'EmployeeemploymentemploymentTypeApi' do
  before do
    # run before each test
    @instance = TripletexRubyClient::EmployeeemploymentemploymentTypeApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of EmployeeemploymentemploymentTypeApi' do
    it 'should create an instance of EmployeeemploymentemploymentTypeApi' do
      expect(@instance).to be_instance_of(TripletexRubyClient::EmployeeemploymentemploymentTypeApi)
    end
  end

  # unit tests for get_employment_end_reason_type
  # [BETA] Find all employment end reason type IDs.
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :from From index
  # @option opts [Integer] :count Number of elements to return
  # @option opts [String] :sorting Sorting pattern
  # @option opts [String] :fields Fields filter pattern
  # @return [ListResponseEmploymentType]
  describe 'get_employment_end_reason_type test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_employment_form_type
  # [BETA] Find all employment form type IDs.
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :from From index
  # @option opts [Integer] :count Number of elements to return
  # @option opts [String] :sorting Sorting pattern
  # @option opts [String] :fields Fields filter pattern
  # @return [ListResponseEmploymentType]
  describe 'get_employment_form_type test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_maritime_employment_type
  # [BETA] Find all maritime employment type IDs.
  # 
  # @param type maritimeEmploymentType
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :from From index
  # @option opts [Integer] :count Number of elements to return
  # @option opts [String] :sorting Sorting pattern
  # @option opts [String] :fields Fields filter pattern
  # @return [ListResponseEmploymentType]
  describe 'get_maritime_employment_type test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_salary_type
  # [BETA] Find all salary type IDs.
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :from From index
  # @option opts [Integer] :count Number of elements to return
  # @option opts [String] :sorting Sorting pattern
  # @option opts [String] :fields Fields filter pattern
  # @return [ListResponseEmploymentType]
  describe 'get_salary_type test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_schedule_type
  # [BETA] Find all schedule type IDs.
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :from From index
  # @option opts [Integer] :count Number of elements to return
  # @option opts [String] :sorting Sorting pattern
  # @option opts [String] :fields Fields filter pattern
  # @return [ListResponseEmploymentType]
  describe 'get_schedule_type test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for search
  # [BETA] Find all employment type IDs.
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :from From index
  # @option opts [Integer] :count Number of elements to return
  # @option opts [String] :sorting Sorting pattern
  # @option opts [String] :fields Fields filter pattern
  # @return [ListResponseEmploymentType]
  describe 'search test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
