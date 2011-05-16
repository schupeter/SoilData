xml.instruct! :xml, :version=>"1.0", :encoding=>"UTF-8", :standalone=>"no"
xml.tag!("ows:ExceptionReport", 
"service".to_sym => "WPS", 
"version".to_sym => "1.0.0", 
"xml:lang".to_sym => "en-CA", 
"xmlns".to_sym => "http://www.opengis.net/wps/1.0", 
"xmlns:ows".to_sym => "http://www.opengis.net/ows/1.1", 
"xmlns:xsi".to_sym => "http://www.w3.org/2001/XMLSchema-instance", 
"xsi:schemaLocation".to_sym => "http://www.opengis.net/ows/1.1  ../../../schemas/ows/1.1.0/owsExceptionReport.xsd") do
    case @exceptionCode
      when "MissingParameterValue" then 
        xml.tag!("ows:Exception", "exceptionCode".to_sym => @exceptionCode) 
        xml.tag!("ows:ExceptionText", "The '#{@exceptionParameter}' parameter was missing.")
      when "InvalidParameterValue" then
        xml.tag!("ows:Exception", "exceptionCode".to_sym => @exceptionCode) 
        xml.tag!("ows:ExceptionText", "'#{@exceptionParameter} = #{@exceptionParameterValue}' is not supported by this service.")
      else
        xml.tag!("ows:Exception") 
        xml.tag!("ows:ExceptionText", "Unspecified error.")
    end # case
end