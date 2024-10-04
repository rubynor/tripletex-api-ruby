=begin
#Tripletex API



OpenAPI spec version: 2.69.5

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.24

=end

require 'spec_helper'
require 'json'

# Unit tests for TripletexRubyClient::OrderorderGroupApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'OrderorderGroupApi' do
  before do
    # run before each test
    @instance = TripletexRubyClient::OrderorderGroupApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OrderorderGroupApi' do
    it 'should create an instance of OrderorderGroupApi' do
      expect(@instance).to be_instance_of(TripletexRubyClient::OrderorderGroupApi)
    end
  end

  # unit tests for delete
  # [Beta] Delete orderGroup by ID.
  # 
  # @param id Element ID
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get
  # [Beta] Get orderGroup by ID. A orderGroup is a way to group orderLines, and add comments and subtotals
  # 
  # @param id Element ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :fields Fields filter pattern
  # @return [ResponseWrapperOrderGroup]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post
  # [Beta] Post orderGroup.
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [OrderGroup] :body JSON representing the new object to be created. Should not have ID and version set.
  # @option opts [String] :order_line_ids List of IDs
  # @return [ResponseWrapperOrderGroup]
  describe 'post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for put
  # [Beta] Put orderGroup.
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [OrderGroup] :body JSON representing the new object to be created. Should not have ID and version set.
  # @option opts [String] :order_line_ids List of IDs
  # @option opts [BOOLEAN] :remove_existing_order_lines Should existing orderLines be removed from this orderGroup
  # @return [ResponseWrapperOrderGroup]
  describe 'put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for search
  # [BETA] Find orderGroups corresponding with sent data.
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :ids List of IDs
  # @option opts [String] :order_ids List of IDs
  # @option opts [Integer] :from From index
  # @option opts [Integer] :count Number of elements to return
  # @option opts [String] :sorting Sorting pattern
  # @option opts [String] :fields Fields filter pattern
  # @return [ListResponseOrderGroup]
  describe 'search test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
