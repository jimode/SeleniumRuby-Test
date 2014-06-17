# require 'selenium-webdriver'
require_relative 'login'

describe "Login" do
	
	before(:each) do
		@driver = Selenium::WebDriver.for :firefox
		ENV['base_url'] = 'http://the-internet.herokuapp.com'
		@login = Login.new(@driver) # instantiate a login object of the class: Login
	end

	after(:each) do
		@driver.quit
	end

	it "succeeded" do
		@login.with('tomsmith', 'SuperSecretPassword!')
		expect(@login.success_message_present?).to be_truthy
	end

	it "failed" do
		@login.with('asdf', 'asdf')
		expect(@login.failure_message_present?).to be_truthy
		# expect(@login.failure_message_present?).to be_false

	end
end