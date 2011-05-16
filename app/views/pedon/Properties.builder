xml.instruct! :xml, :version=>"1.0", :encoding=>"UTF-8", :standalone=>"no"
xml.tag!("SoilData",
	:serviceURL => @urls.service,
	:collectionsURL => @urls.collections,
	:helpURL => @urls.help,
	:version => "0.1") do
  xml.Collection(:id=>@collectionId, :title=>@collection.Title, :collectionURL=>@urls.collection, :soilsURL=>@urls.soils, :propertyBaseURL=>@urls.propertyBase) do
		xml.Properties do
			for property in @properties do
				xml.Property(:id=>URI.escape(property.property_id, Regexp.new("[^#{URI::PATTERN::UNRESERVED}]")), :title=>property.title, :unit=>property.unit)
			end
		end
	end
end