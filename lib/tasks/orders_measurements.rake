desc "Get Order Values"
task :fetch_orders => :environment do
  	require 'mechanize'
	require 'open-uri'
	require 'nokogiri'

	agent = Mechanize.new
	
	agent.get("https://www.ardenreed.com/admin")

	form = agent.page.forms.first

	username_field = form.field_with(:name => "user_session[username]")
	username_field = "ArdenReedAdmin"
	password_field = form.field_with(:name => "user_session[password]")
	password_field = "Arden0o9i8u"
	form.submit
	
	agent.page.search(".//a").each do |link|
		ln = link.xpath("@href")

		#This is wrong 
		product = agent.page.search(".item-box").each do |item|
			Customer.create!(name: item.text.strip)
		end
	end

end


