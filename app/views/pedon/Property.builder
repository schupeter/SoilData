xml.instruct! :xml, :version=>"1.0", :encoding=>"UTF-8", :standalone=>"no"
xml.tag!("SoilData",
	:serviceURL => @urls.service,
	:collectionsURL => @urls.collections,
	:helpURL => @urls.help,
	:version => "0.1") do
  xml.Collection(:id=>@collectionId, :title=>@collection.Title, :collectionURL=>@urls.collection, :soilsURL=>@urls.soils) do
		xml.Properties do
			if @property.numeric == "Y" then numeric = true else numeric = false end
			xml.Property(:id=>@property.property_id, :title=>@property.title, :unit=>@property.unit, :numeric=>numeric) do
				xml.Abstract(@property.abstract)
				xml.Method(@property.method)
			end
		end
	end
end