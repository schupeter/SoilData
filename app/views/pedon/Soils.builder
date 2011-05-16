xml.instruct! :xml, :version=>"1.0", :encoding=>"UTF-8", :standalone=>"no"
xml.tag!("SoilData",
	:serviceURL => @urls.service, 
	:collectionsURL => @urls.collections,
	:helpURL => @urls.help,
	:version => "0.1") do
  xml.Collection(:id=>@collectionId, :title=>@collection.Title, :collectionURL=>@urls.collection, :propertiesURL=>@urls.properties, :soilBaseURL=>@urls.soil) do
		xml.SoilSet do
			for soil in @soils do
				xml.Soil(:id => soil.Soil_id)
			end
		end
	end
end
