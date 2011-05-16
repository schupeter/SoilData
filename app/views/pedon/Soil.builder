xml.instruct! :xml, :version=>"1.0", :encoding=>"UTF-8", :standalone=>"no"
xml.tag!("SoilData",
	:serviceURL => @urls.service, 
	:collectionsURL => @urls.collections,
	:helpURL => @urls.help,
	:version => "0.1") do
  xml.Collection(:id=>@collectionId, :title=>@collection.Title, :collectionURL=>@urls.collection, :propertiesURL=>@urls.properties, :propertyBaseURL=>@urls.propertyBase, :soilsURL=>@urls.soils) do
		xml.SoilSet do
			xml.Soil(:id=>@soilId, :layersURL=>@urls.layers) do
				for soildata in @soildata do
					xml.Property(:id=>soildata.Property_id, :value=>soildata.Value, :title=>@propertyTitles[soildata.Property_id], :unit=>@propertyUnits[soildata.Property_id])
				end
				xml.LayerSet do
					for layer in @pedonlayers do
						xml.Layer(:id=>layer.layer_no, :upperDepth=>layer.u_depth, :lowerDepth=>layer.l_depth) do
							xml.Property(:id=>"HZN_MAS", :value=>layer.hzn_mas, :title=>"tbd")
							xml.Property(:id=>"HZN_SUF", :value=>layer.hzn_suf, :title=>"tbd")
							xml.Property(:id=>"HZN_MOD", :value=>layer.hzn_mod, :title=>"tbd")
							xml.Property(:id=>"HZN_LIT", :value=>layer.hzn_lit, :title=>"tbd")
							for value in @pedonvalues do
								if layer.layer_no == value.layer_no then
									xml.Property(:id=>value.property_id, :value=>value.value, :title=>@propertyTitles[value.property_id], :unit=>@propertyUnits[value.property_id])
								end
							end
						end
					end
				end
			end
		end
	end
end
