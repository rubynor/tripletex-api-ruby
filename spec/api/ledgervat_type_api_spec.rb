=begin
#Tripletex API



OpenAPI spec version: 2.69.5

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.24

=end

require 'spec_helper'
require 'json'

# Unit tests for TripletexRubyClient::LedgervatTypeApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'LedgervatTypeApi' do
  before do
    # run before each test
    @instance = TripletexRubyClient::LedgervatTypeApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of LedgervatTypeApi' do
    it 'should create an instance of LedgervatTypeApi' do
      expect(@instance).to be_instance_of(TripletexRubyClient::LedgervatTypeApi)
    end
  end

  # unit tests for create_relative_vat_type
  # [BETA] Create a new relative VAT Type. These are used if the company has &#39;forholdsmessig fradrag for inngående MVA&#39;.
  # 
  # @param name VAT type name, max 8 characters.
  # @param vat_type_id VAT type ID. The relative VAT type will behave like this VAT type, except for the basis for calculating the VAT deduction, which is decided by the basis percentage.
  # @param percentage Basis percentage. This percentage will be multiplied with the transaction amount to find the amount that will be the basis for calculating the deduction amount.
  # @param [Hash] opts the optional parameters
  # @return [ResponseWrapperVatType]
  describe 'create_relative_vat_type test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get
  # Get vat type by ID.
  # 
  # @param id Element ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :fields Fields filter pattern
  # @return [ResponseWrapperVatType]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for search
  # Find vat types corresponding with sent data.
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :id List of IDs
  # @option opts [String] :number List of IDs
  # @option opts [String] :type_of_vat Type of VAT
  # @option opts [String] :vat_date yyyy-MM-dd. Defaults to today. Note that this is only used in combination with typeOfVat-parameter. Only valid vatTypes on the given date are returned.
  # @option opts [Integer] :from From index
  # @option opts [Integer] :count Number of elements to return
  # @option opts [String] :sorting Sorting pattern
  # @option opts [String] :fields Fields filter pattern
  # @return [ListResponseVatType]
  describe 'search test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
