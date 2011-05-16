class PedonController < ApplicationController

	require 'lib/service'
	require 'uri'
	
	def Owner
		@urls = ServiceURLs.set(self.request.host, self.request.port, "/SoilData", "level1", nil, nil)
	  @indexHash = YAML.load_file("#{RAILS_ROOT}/config/services/soil.yml")
		render :action => 'Owner2', :layout => false and return and exit 1
	end

	def Collections
		@urls = ServiceURLs.set(self.request.host, self.request.port, "/SoilData", "level1", nil, nil)
		@collections = Collection.find(:all)
		render :action => 'Collections2', :layout => false and return and exit 1
	end

	def Collection
		@collectionId = params[:collection]
		@urls = ServiceURLs.set(self.request.host, self.request.port, "/SoilData", "level3", @collectionId, nil)
		@collection = Collection.find(:all, :conditions=>{:id => @collectionId})[0]
		render :action => 'Collection2', :layout => false and return and exit 1
	end

	def Properties
		@collectionId = params[:collection]
		@urls = ServiceURLs.set(self.request.host, self.request.port, "/SoilData", "level2", @collectionId, nil)
		@collection = Collection.find(:all, :conditions=>{:id => @collectionId})[0]
		@properties = Pedonproperty.find(:all)
		render :action => 'Properties2', :layout => false and return and exit 1
	end

	def Property
		@collectionId = params[:collection]
		@propertyId = params[:property].join("/")
		@urls = ServiceURLs.set(self.request.host, self.request.port, "/SoilData", "property", @collectionId, nil)
		@collection = Collection.find(:all, :conditions=>{:id => @collectionId})[0]
		@property = Pedonproperty.find(:all, :conditions=>{:property_id => @propertyId})[0]
		render :action => 'Property2', :layout => false and return and exit 1
	end

	def Soils
		@collectionId = params[:collection]
		@urls = ServiceURLs.set(self.request.host, self.request.port, "/SoilData", "level3", @collectionId, nil)
		@collection = Collection.find(:all, :conditions=>{:id => @collectionId})[0]
		@soils = Soil.find(:all, :conditions=>{:Collection_id => @collectionId})
		render :action => 'Soils2', :layout => false and return and exit 1
	end

	def Soil
		@collectionId = params[:collection]
		@soilId = params[:soil].join("/")
		@urls = ServiceURLs.set(self.request.host, self.request.port, "/SoilData", "level2", @collectionId, @soilId)
		@collection = Collection.find(:all, :conditions=>{:id => @collectionId})[0]
		@soildata = Soilproperty.find(:all, :conditions=>{:Collection_id=>@collectionId, :Soil_id=>@soilId})
		@pedonlayers = Pedonlayer.find(:all, :conditions=>{:pedon_id=>@soilId})
		@pedonvalues = Pedonvalue.find(:all, :conditions=>{:pedon_id=>@soilId})
		@pedonproperties = Pedonproperty.find(:all)
		@propertyTitles = Hash.new
		@propertyUnits = Hash.new
		for property in @pedonproperties do
			@propertyTitles[property.property_id] = property.title
			@propertyUnits[property.property_id] = property.unit
		end
		render :action => 'Soil2', :layout => false and return and exit 1
	end

end