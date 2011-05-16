xml.instruct! :xml, :version=>"1.0", :encoding=>"UTF-8", :standalone=>"no"
#xml.instruct! 'xml-stylesheet', :type=>"text/xsl", :href=>"/stylesheets/index.xsl"
xml.tag!("SoilData",
	:serviceURL => @urls.service, 
	:wadl => @urls.help,
	:collections => @urls.collections,
	:version => "0.1") do
	xml.tag!("Owner", :name=>"CanSIS", :website=>"http://sis.agr.gc.ca/cansis") do
		xml.tag!("Contact", :name=>"Peter Schut", :title=>"Head, CanSIS", :email=>"peter.schut@agr.gc.ca", :phone=>"+1 613 759 1874", :fax=>"+1 613 759 1937") do
			xml.tag!("Address") do
				xml.tag!("DeliveryPoint", "Room 1135, 960 Carling Avenue")
				xml.tag!("City", "Ottawa")
				xml.tag!("AdministrativeArea", "ON")
				xml.tag!("PostalCode","K1AOC6")
				xml.tag!("Country","Canada")
			end
		end
	end
end