# add to .gitignore.
require 'sauce_whisk'
require 'sauce'


ENV['base_url']			||= 'http://the-internet.herokuapp.com'
ENV['host'] 			= 'saucelabs'
ENV['operating_system'] ||= 'Windows XP'
ENV['browser'] 			||= 'internet_explorer'
ENV['browser_version'] 	||= '8'
ENV['SAUCE_USERNAME']   ||= 'jimode'
ENV['SAUCE_ACCESS_KEY'] ||= '4a2031c2-e5d4-4509-bee5-04920d0e5dda'
ENV['tunnel']			||= ''

unless ENV['tunnel'].empty?
	require 'sauce'
	ENV['base_url']       = 'http//the-internet-local:4567'
end
