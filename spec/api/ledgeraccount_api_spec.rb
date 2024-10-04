=begin
#Tripletex API



OpenAPI spec version: 2.69.5

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.24

=end

require 'spec_helper'
require 'json'

# Unit tests for TripletexRubyClient::LedgeraccountApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'LedgeraccountApi' do
  before do
    # run before each test
    @instance = TripletexRubyClient::LedgeraccountApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of LedgeraccountApi' do
    it 'should create an instance of LedgeraccountApi' do
      expect(@instance).to be_instance_of(TripletexRubyClient::LedgeraccountApi)
    end
  end

  # unit tests for delete
  # [BETA] Delete account.
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
  # [BETA] Delete multiple accounts.
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
  # Get account by ID.
  # 
  # @param id Element ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :fields Fields filter pattern
  # @return [ResponseWrapperAccount]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post
  # [BETA] Create a new account.
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [Account] :body JSON representing the new object to be created. Should not have ID and version set.
  # @return [ResponseWrapperAccount]
  describe 'post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_list
  # [BETA] Create several accounts.
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [Array<Account>] :body JSON representing a list of new object to be created. Should not have ID and version set.
  # @return [ListResponseAccount]
  describe 'post_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for put
  # [BETA] Update account.
  # 
  # @param id Element ID
  # @param [Hash] opts the optional parameters
  # @option opts [Account] :body Partial object describing what should be updated
  # @return [ResponseWrapperAccount]
  describe 'put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for put_list
  # [BETA] Update multiple accounts.
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [Array<Account>] :body JSON representing updates to object. Should have ID and version set.
  # @return [ListResponseAccount]
  describe 'put_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for search
  # Find accounts corresponding with sent data.
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :id List of IDs
  # @option opts [String] :number List of IDs
  # @option opts [BOOLEAN] :is_bank_account Equals
  # @option opts [BOOLEAN] :is_inactive Equals
  # @option opts [BOOLEAN] :is_applicable_for_supplier_invoice Equals
  # @option opts [String] :ledger_type Ledger type
  # @option opts [BOOLEAN] :is_balance_account Balance account
  # @option opts [Integer] :from From index
  # @option opts [Integer] :count Number of elements to return
  # @option opts [String] :sorting Sorting pattern
  # @option opts [String] :fields Fields filter pattern
  # @return [ListResponseAccount]
  describe 'search test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
