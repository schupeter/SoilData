xml.instruct! :xml, :version=>"1.0", :encoding=>"UTF-8", :standalone=>"no"
xml.tag!("Capabilities", 
"serviceURL"=>"http://#{self.request.host}/Soil", 
"version".to_sym => "0.1") do
	xml.tag!("ServiceProvider") do
		xml.tag!("ProviderName","CanSIS")
		xml.tag!("ProviderURL", "http://sis.agr.gc.ca/cansis")
		xml.tag!("ContactInfo") do
			xml.tag!("IndividualName", "Peter Schut")
			xml.tag!("PositionName")
			xml.tag!("Phone") do
				xml.tag!("Voice", "+1 613 759 1874")
				xml.tag!("Facsimile", "+1 613 759 1937")
			end
			xml.tag!("Address") do
				xml.tag!("DeliveryPoint", "Room 1135")
				xml.tag!("City", "Ottawa")
				xml.tag!("AdministrativeArea", "ON")
				xml.tag!("PostalCode","K1AOC6")
				xml.tag!("Country","Canada")
				end
			xml.tag!("Email","peter.schut@agr.gc.ca")
		end
	end
	xml.tag!("Collections") do
		for collection in @collections do
			xml.tag!("Collection", :identifier => collection.id) do
				xml.tag!("Title", collection.Title)
				xml.tag!("Abstract", collection.Abstract)
			end
		end
	end

end

