=begin
#Tripletex API



OpenAPI spec version: 2.69.5

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.24

=end

require 'spec_helper'
require 'json'

# Unit tests for TripletexRubyClient::ProductgroupRelationApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ProductgroupRelationApi' do
  before do
    # run before each test
    @instance = TripletexRubyClient::ProductgroupRelationApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ProductgroupRelationApi' do
    it 'should create an instance of ProductgroupRelationApi' do
      expect(@instance).to be_instance_of(TripletexRubyClient::ProductgroupRelationApi)
    end
  end

  # unit tests for delete
  # [BETA] Delete product group relation.
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
  # [BETA] Delete multiple product group relations.
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
  # [BETA] Find product group relation by ID.
  # 
  # @param id Element ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :fields Fields filter pattern
  # @return [ResponseWrapperProductGroupRelation]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post
  # [BETA] Create new product group relation.
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [ProductGroupRelation] :body JSON representing the new object to be created. Should not have ID and version set.
  # @return [ResponseWrapperProductGroupRelation]
  describe 'post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_list
  # [BETA] Add multiple products group relations.
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [Array<ProductGroupRelation>] :body JSON representing a list of new object to be created. Should not have ID and version set.
  # @return [ListResponseProductGroupRelation]
  describe 'post_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for search
  # [BETA] Find product group relation with sent data.
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :id List of IDs
  # @option opts [String] :product_id List of IDs
  # @option opts [String] :product_group_id List of IDs
  # @option opts [Integer] :from From index
  # @option opts [Integer] :count Number of elements to return
  # @option opts [String] :sorting Sorting pattern
  # @option opts [String] :fields Fields filter pattern
  # @return [ListResponseProductGroupRelation]
  describe 'search test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
