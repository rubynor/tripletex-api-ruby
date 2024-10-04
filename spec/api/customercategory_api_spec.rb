=begin
#Tripletex API



OpenAPI spec version: 2.69.5

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.24

=end

require 'spec_helper'
require 'json'

# Unit tests for TripletexRubyClient::CustomercategoryApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CustomercategoryApi' do
  before do
    # run before each test
    @instance = TripletexRubyClient::CustomercategoryApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CustomercategoryApi' do
    it 'should create an instance of CustomercategoryApi' do
      expect(@instance).to be_instance_of(TripletexRubyClient::CustomercategoryApi)
    end
  end

  # unit tests for get
  # Find customer/supplier category by ID.
  # 
  # @param id Element ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :fields Fields filter pattern
  # @return [ResponseWrapperCustomerCategory]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post
  # Add new customer/supplier category.
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [CustomerCategory] :body JSON representing the new object to be created. Should not have ID and version set.
  # @return [ResponseWrapperCustomerCategory]
  describe 'post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for put
  # Update customer/supplier category.
  # 
  # @param id Element ID
  # @param [Hash] opts the optional parameters
  # @option opts [CustomerCategory] :body Partial object describing what should be updated
  # @return [ResponseWrapperCustomerCategory]
  describe 'put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for search
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
  # @return [ListResponseCustomerCategory]
  describe 'search test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
