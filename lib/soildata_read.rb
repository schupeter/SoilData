module SoilData_read

  class Owner
    attr_accessor :serviceURL, :collectionsURL, :helpURL
  end

  def SoilData_read.owner(ownerXml)
    owner = Owner.new
    owner.serviceURL = sourcetarget.search("/SoilData/@serviceURL").first.content
		owner.collectionsURL = sourcetarget.search("/SoilData/@collectionsURL").first.content
		owner.helpURL = sourcetarget.search("/SoilData/@helpURL").first.content
    return owner
  end


=begin
  def PART_read.rowset(rowsetXmlArray)
    # store each Row XML element in a separate array element
    #rowsetXmlArray = part.search("//PART/Rowset/Row")
    #create array containing content of all rows.  Each element is an array, with S in position 0 followed by T and P.
    # Note that this differs from how the data is stored when writing the rowset in the partial _gdas_write_rowset.rb
    rowsetArray = Array.new
    for row in rowsetXmlArray do
      rowHash = Hash.new
      rowHash[:SourceKey] = row.search("S").first.content
      rowHash[:TargetKey] = row.search("T").first.content
      rowHash[:Portion] = row.search("P").first.content.to_f
      rowsetArray.push rowHash
    end
    return rowsetArray
  end
=end

end
 
