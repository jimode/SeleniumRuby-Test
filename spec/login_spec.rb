# require 'selenium-webdriver'

require_relative 'spec_helper'
require_relative '../pages/login'

describe "Login", depth: 'shallow' do
	
	before(:each) do
		# @driver = Selenium::WebDriver.for :firefox
		# ENV['base_url'] = 'http://the-internet.herokuapp.com'
		@login = Login.new(@driver) # instantiate a login object of the class: Login
	end

	# after(:each) do
	# 	@driver.quit
	# end

	it "succeeded" do
		@login.with('tomsmith', 'SuperSecretPassword!')
		@login.success_message_present?.should be_true
		# expect(@login.success_message_present?).to be_truthy
	end

	it "failed" do
		@login.with('asdf', 'asdf')
		@login.failure_message_present?.should be_true
		# expect(@login.failure_message_present?).to be_truthy
		# expect(@login.failure_message_present?).to be_false

	end
end