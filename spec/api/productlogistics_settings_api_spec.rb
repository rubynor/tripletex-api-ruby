=begin
#Tripletex API



OpenAPI spec version: 2.69.5

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.24

=end

require 'spec_helper'
require 'json'

# Unit tests for TripletexRubyClient::ProductlogisticsSettingsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ProductlogisticsSettingsApi' do
  before do
    # run before each test
    @instance = TripletexRubyClient::ProductlogisticsSettingsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ProductlogisticsSettingsApi' do
    it 'should create an instance of ProductlogisticsSettingsApi' do
      expect(@instance).to be_instance_of(TripletexRubyClient::ProductlogisticsSettingsApi)
    end
  end

  # unit tests for get
  # [BETA] Get logistics settings of logged in company.
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :fields Fields filter pattern
  # @return [ResponseWrapperLogisticsSettings]
  describe 'get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for put
  # [BETA] Update logistics settings of logged in company.
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [LogisticsSettings] :body Partial object describing what should be updated
  # @return [ResponseWrapperLogisticsSettings]
  describe 'put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
