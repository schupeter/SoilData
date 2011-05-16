@params =  Hash.new
@params["SOILDATAURL"] = "http://localhost/SoilData/"
require "#{RAILS_ROOT}/app/helpers/libxml-helper"
require "open-uri"
require "soildata_read"
@soilData = open(@params["SOILDATAURL"]).read().to_libxml_doc.root
@soilData.find_first("//SoilData/Owner/@website").value
@soilData.text_at("//SoilData/Owner/Contact/Address/DeliveryPoint")
@soilData.text_at("//SoilData/Owner/@website")


@soilData.text_at("//SoilData/Owner/@website")

@soilData.text_at("//SoilData/Owner/@website")
@soilData.text_at("//SoilData/Owner/@website")


@soilData.find_first("//SoilData/Owner/@website").class
@soilData.text_at("//SoilData/Owner/Contact/Address/DeliveryPoint").class

