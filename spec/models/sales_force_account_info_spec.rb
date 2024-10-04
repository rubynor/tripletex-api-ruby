=begin
#Tripletex API



OpenAPI spec version: 2.69.5

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.24

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for TripletexRubyClient::SalesForceAccountInfo
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SalesForceAccountInfo' do
  before do
    # run before each test
    @instance = TripletexRubyClient::SalesForceAccountInfo.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SalesForceAccountInfo' do
    it 'should create an instance of SalesForceAccountInfo' do
      expect(@instance).to be_instance_of(TripletexRubyClient::SalesForceAccountInfo)
    end
  end
  describe 'test attribute "id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "version"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "changes"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "url"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "customer_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "customer_company_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "is_reseller"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "is_accountant"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "is_auditor"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "is_suspended"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "register_date"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "start_date"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "end_date"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "active_main_module"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["ACCOUNTING", "INVOICE", "CRM", "PROJECT", "WAGE", "NETS_PRINT", "NETS_PRINT_SALARY", "OCR", "REMIT", "SMS_NOTIFICATION", "VOUCHER_SCANNING", "TIME_TRACKING", "VVS_ELECTRO", "UBEGRENSET_BILAG_VVS_ELEKTRO", "INVOICE_OPTION_VIPPS", "INVOICE_OPTION_EFAKTURA", "INVOICE_OPTION_AVTALEGIRO", "INVOICE_OPTION_PAPER", "FACTORING_APRILA", "INVOICE_OPTION_AUTOINVOICE_OUTBOUND_EHF", "API_V2", "SMART_SCAN", "BILAG_0_100_mikro", "BILAG_0_500_vanlig_legacy", "BILAG_501_1000_vanlig_legacy", "BILAG_1001_2000_vanlig_legacy", "BILAG_2001_3500_vanlig_legacy", "BILAG_3501_5000_vanlig_legacy", "BILAG_5001_10001_vanlig_legacy", "UBEGRENSET_BILAG_vanlig_legacy", "BILAG_0_500_prosjekt_legacy", "BILAG_501_1000_prosjekt_legacy", "BILAG_1001_2000_prosjekt_legacy", "BILAG_2001_3500_prosjekt_legacy", "BILAG_3501_5000_prosjekt_legacy", "BILAG_5001_10001_prosjekt_legacy", "UBEGRENSET_BILAG_prosjekt_legacy", "MIKRO", "MINI", "MEDIUM", "TOTAL", "BASIS", "SMART", "AGRO_CLIENT", "MAMUT", "KOMPLETT", "SMART_WAGE", "SMART_TIME_TRACKING", "BILAG_0_500", "BILAG_501_1000", "BILAG_1001_2000", "BILAG_2001_3500", "BILAG_3501_5000", "BILAG_5001_10001", "UBEGRENSET_BILAG", "READ_ONLY_ACCESS", "READ_ONLY_ACCESS_FREE", "AUTOPAY", "VOUCHER_APPROVAL", "SMART_PROJECT", "ACCOUNT_OFFICE", "UNLIMITED_VOUCHER_ACCOUNT_OFFICE", "COMPANY_SERVICE_FOR_PAYING_ACCOUNT_OFFICES", "AGRO_WAGE", "INVOICE_OPTION_AUTOINVOICE_INCOMING_EHF", "MAMUT_PROJECT", "MAMUT_WITH_WAGE", "USER_SERVICE_HISTORIC_CUSTOMERS_NON_STANDARD", "ENCRYPTED_PAYSLIP", "AGRO_LICENCE", "AGRO_DOCUMENT_CENTER", "AGRO_INVOICE", "FIVE_EMPLOYEES", "AUTOPLUS_MINI", "AUTOPLUS_MEDIUM", "AUTOPLUS_STOR", "CASH_CREDIT_APRILA", "NO1TS", "NO1TS_TRAVELREPORT", "NO1TS_ACCOUNTING", "AGRO_INVOICE_MIGRATED", "USER_CATEGORY_1_LICENSE", "USER_CATEGORY_2_LICENSE", "USER_CATEGORY_3_LICENSE", "VOUCHER_FACTORY", "OCR_AUTOPAY", "CLOSED_ACCOUNT", "LOGISTICS", "INTEGRATION_PARTNER"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.active_main_module = value }.not_to raise_error
      # end
    end
  end

end
