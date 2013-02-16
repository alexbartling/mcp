class CitationsController < ApplicationController
   	def result
  		require 'rubygems'
		require 'mechanize'
		
		agent = Mechanize.new

		page = agent.get('https://step1.caledoncard.com/citations/milwaukee.html')
		mcp_form = page.form('CITATION')
		mcp_form.LIC = '373mzf'
		page = agent.submit(mcp_form)
		table = page.search('#Processing table table table tr')
		table_rows = table[1..-3]
		
		@row_array = Array.new
		table_rows.each_with_index do |tr, key|
			row = tr.children[1..-2].text
			@row_array[key] = row.split(' ')
		end
	
	end
 end
 
	

	

	
  

# # table = page.xpath('#Processing table table table tr')

# 	# @monkey = agent.page.search('.tabledata')

# 	# rows = page.search('#Processing table table table tr')

# 	# @table = page.parser.xpath("//td[@id='Processing']//table//table//table/tr").map{ |n| n.text }

# 	@array = Array.new

# 	# Iterates over rows
# 	table_rows.each do |row|
		
 
# 	# Iterates over cells in row
# 	row.children.each_with_index do |child, i|
			
		

# 		if i == 0
		
# 		elsif i == 1
		
# 		elsif i == 2
		
# 		elsif i == 3
		
# 		elsif i == 4
		
