class CitationsController < ApplicationController
  def result
  require 'rubygems'
  require 'mechanize'
	agent = Mechanize.new


	page = agent.get('https://step1.caledoncard.com/citations/milwaukee.html')
	mcp_form = page.form('CITATION')
	mcp_form.LIC = '373mzf'
	page = agent.submit(mcp_form)
	@data = agent.page.search('.tabledata')
	
  end
end




	# @monkey = agent.page.search('.tabledata').map(&:text).map(&:strip)