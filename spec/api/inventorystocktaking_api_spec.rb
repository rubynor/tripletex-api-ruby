=begin
#Tripletex API



OpenAPI spec version: 2.69.5

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.24

=end

require 'spec_helper'
require 'json'

# Unit tests for TripletexRubyClient::InventorystocktakingApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'InventorystocktakingApi' do
  before do
    # run before each test
    @instance = TripletexRubyClient::InventorystocktakingApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of InventorystocktakingApi' do
    it 'should create an instance of InventorystocktakingApi' do
      expect(@instance).to be_instance_of(TripletexRubyClient::InventorystocktakingApi)
    end
  end

  # unit tests for delete
  # [BETA] Delete stocktaking.
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
  # [BETA] Get stocktaking by ID.
  # 
  # @param id Element ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :fields Fields filter pattern
  # @return [ResponseWrapperStocktaking]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post
  # [BETA] Create new stocktaking.
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :type_of_stocktaking 
  # @option opts [Stocktaking] :body JSON representing the new object to be created. Should not have ID and version set.
  # @return [ResponseWrapperStocktaking]
  describe 'post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for put
  # [BETA] Update stocktaking.
  # 
  # @param id Element ID
  # @param [Hash] opts the optional parameters
  # @option opts [Stocktaking] :body Partial object describing what should be updated
  # @return [ResponseWrapperStocktaking]
  describe 'put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for search
  # [BETA] Find stocktaking corresponding with sent data.
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :id List of IDs
  # @option opts [BOOLEAN] :is_completed Equals
  # @option opts [Integer] :inventory_id Equals
  # @option opts [Integer] :from From index
  # @option opts [Integer] :count Number of elements to return
  # @option opts [String] :sorting Sorting pattern
  # @option opts [String] :fields Fields filter pattern
  # @return [ListResponseStocktaking]
  describe 'search test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
