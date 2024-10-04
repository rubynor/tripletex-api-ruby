=begin
#Tripletex API



OpenAPI spec version: 2.69.5

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.24

=end

require 'spec_helper'
require 'json'

# Unit tests for TripletexRubyClient::InvoicedetailsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'InvoicedetailsApi' do
  before do
    # run before each test
    @instance = TripletexRubyClient::InvoicedetailsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of InvoicedetailsApi' do
    it 'should create an instance of InvoicedetailsApi' do
      expect(@instance).to be_instance_of(TripletexRubyClient::InvoicedetailsApi)
    end
  end

  # unit tests for get
  # Get ProjectInvoiceDetails by ID.
  # 
  # @param id Element ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :fields Fields filter pattern
  # @return [ResponseWrapperProjectInvoiceDetails]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for search
  # Find ProjectInvoiceDetails corresponding with sent data.
  # 
  # @param invoice_date_from From and including
  # @param invoice_date_to To and excluding
  # @param [Hash] opts the optional parameters
  # @option opts [String] :id List of IDs
  # @option opts [Integer] :from From index
  # @option opts [Integer] :count Number of elements to return
  # @option opts [String] :sorting Sorting pattern
  # @option opts [String] :fields Fields filter pattern
  # @return [ListResponseProjectInvoiceDetails]
  describe 'search test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
