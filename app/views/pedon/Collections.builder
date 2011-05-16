xml.instruct! :xml, :version=>"1.0", :encoding=>"UTF-8", :standalone=>"no"
xml.tag!("SoilData", 
	:serviceURL => @urls.service, 
	:wadl => @urls.help,
	:version => "0.1") do
	xml.tag!("CollectionSet") do
		for collection in @collections do
			xml.Collection(:id=>collection.Collection_id, :title=>collection.Title, :collectionURL=>@urls.collection + collection.id.to_s) 
		end
	end
end