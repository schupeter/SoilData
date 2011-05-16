xml.instruct! :xml, :version=>"1.0", :encoding=>"UTF-8", :standalone=>"no"
xml.tag!("SoilData",
	:serviceURL => @urls.service,
	:collectionsURL => @urls.collections,
	:helpURL => @urls.help,
	:version => "0.1") do
  xml.Collection(:id=>@collectionId, :title=>@collection.Title, :propertiesURL=>@urls.properties, :soilsURL=>@urls.soils) do
		xml.Purpose(@collection.Purpose)
		xml.Abstract(@collection.Abstract)
	end
end
