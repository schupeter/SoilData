class ClientController < ApplicationController

	def Owner
    # standardize request parameters
		@params =  Hash.new
		params.each do |key, value| @params[key.upcase] = value end

    # ensure all required nonstandard parameters are present
		if @params["SOILDATAURL"] == nil then @exceptionParameter = "SoilDataURL"; @exceptionCode = "MissingParameterValue"; render :template => '/wps/1.0simple/Error_response', :layout => false and return and exit 1 end

		# initialize environment
		require "#{RAILS_ROOT}/app/helpers/libxml-helper"
		require "open-uri"
		require "soildata_read"
		@soilData = open(@params["SOILDATAURL"]).read().to_libxml_doc.root
		render :action => 'Owner', :layout => false and return and exit 1
	end

	def Collections
    # standardize request parameters
		@params =  Hash.new
		params.each do |key, value| @params[key.upcase] = value end

    # ensure all required nonstandard parameters are present
		if @params["COLLECTIONSURL"] == nil then @exceptionParameter = "CollectionsURL"; @exceptionCode = "MissingParameterValue"; render :template => '/wps/1.0simple/Error_response', :layout => false and return and exit 1 end

		# initialize environment
		require "#{RAILS_ROOT}/app/helpers/libxml-helper"
		require "open-uri"
		require "soildata_read"
		@soilData = open(@params["COLLECTIONSURL"]).read().to_libxml_doc.root
		render :action => 'Collections', :layout => false and return and exit 1
	end

	def Collection
    # standardize request parameters
		@params =  Hash.new
		params.each do |key, value| @params[key.upcase] = value end

    # ensure all required nonstandard parameters are present
		if @params["COLLECTIONURL"] == nil then @exceptionParameter = "CollectionURL"; @exceptionCode = "MissingParameterValue"; render :template => '/wps/1.0simple/Error_response', :layout => false and return and exit 1 end

		# initialize environment
		require "#{RAILS_ROOT}/app/helpers/libxml-helper"
		require "open-uri"
		require "soildata_read"
		@soilData = open(@params["COLLECTIONURL"]).read().to_libxml_doc.root
		render :action => 'Collection', :layout => false and return and exit 1
	end
end