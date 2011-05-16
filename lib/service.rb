module ServiceURLs

  class URLs
    attr_accessor  :service, :topdir, :help, :collections, :collection, :properties, :propertyBase, :soils, :soil, :layers
  end

  def ServiceURLs.set(host, port, topdir, dir, collectionNum, soilNum)
		# determine urls for different operations of the service
    urls = URLs.new
		if port != 80 then 
			urls.service = "http://" + host + ":" + port.to_s + topdir + "/"
		else
			urls.service = "http://" + host + topdir + "/"
		end
=begin
		urls.topdir = topdir
		case dir
			when "level1" then 
				urls.help = "Help"
				urls.collections = "Collections"
				urls.collection = "Collection/"
			when "level2" then
				urls.help = "../Help"
				urls.collections = "../Collections"
				urls.definitions = "Definitions"
				urls.soils = "Soils"
			when "level3" then
				urls.help = "../../Help"
				urls.collections = "../../Collections"
				urls.definitions = "../Definitions"
				urls.soils = "../Soils"
				urls.soil = "Soil/" + soilNum.to_s
			when "definition" then
				urls.help = "../../../Help"
				urls.collections = "../../../Collections"
				urls.collection = "../../../Collection/" + collectionNum.to_s
				urls.definitions = "../../Definitions"
				urls.soils = "../../Soils"
			when "soil" then
				urls.help = "../../../Help"
				urls.collections = "../../../Collections"
				urls.collection = "../../../Collection/" + collectionNum.to_s
				urls.definitions = "../../Definitions"
				urls.definitionBase = "../../Definition/"
				urls.soils = "../../Soils"
		end
=end
		urls.help = topdir + "/wadl.xml"
		urls.collections = topdir + "/Collections"
		urls.collection = topdir + "/Collection/" + collectionNum.to_s
		urls.properties = topdir + "/Collection/" + collectionNum.to_s + "/Properties"
		urls.propertyBase = topdir + "/Collection/" + collectionNum.to_s + "/Property/"
		urls.soils = topdir + "/Collection/" + collectionNum.to_s + "/Soils"
		urls.soil = topdir + "/Collection/" + collectionNum.to_s + "/Soil/" + soilNum.to_s
    return urls
  end

end
