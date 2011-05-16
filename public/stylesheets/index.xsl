<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
 <html>
<head>
	<title>Soil Pedon Data at <xsl:value-of select="SoilData/@serviceURL" /></title>
</head>
 <body>
<center>
<h2>Soil Pedon Service</h2> 
<table>
	<tr>
		<td align="right">Service URL: </td>
		<td>
			<xsl:element name="a">
				<xsl:attribute name="href"><xsl:value-of select="SoilData/@serviceURL" /></xsl:attribute>
				<xsl:value-of select="SoilData/@serviceURL" />
			</xsl:element>
		</td>
	</tr>
	<tr>
		<td align="right">Help URL: </td>
		<td>
			<xsl:element name="a">
				<xsl:attribute name="href"><xsl:value-of select="SoilData/@helpURL" /></xsl:attribute>
				<xsl:value-of select="SoilData/@helpURL" />
			</xsl:element>
		</td>
	</tr>
	<tr>
		<td align="right">Collections URL: </td>
		<td>
			<xsl:element name="a">
				<xsl:attribute name="href"><xsl:value-of select="SoilData/@collectionsURL" /></xsl:attribute>
				<xsl:value-of select="SoilData/@collectionsURL" />
			</xsl:element>
		</td>
	</tr>
	<tr>
		<td align="right">Owner: </td>
		<td>
			<xsl:element name="a">
				<xsl:attribute name="href"><xsl:value-of select="SoilData/Owner/@website" /></xsl:attribute>
				<xsl:value-of select="SoilData/Owner/@name" />
			</xsl:element>
		</td>
	</tr>
</table>





<xsl:value-of select="Hash/Description" /> 
<p/>

<table border="1">
	<xsl:for-each select="/Hash">
		<xsl:choose>
			<xsl:when test="Table">
				<tr>
					<xsl:for-each select="/Hash/KeyDescriptions/Attribute">
						<th bgcolor="#cc9933">Key:<br/><xsl:element name="a"><xsl:attribute name="href">#<xsl:value-of select="AttributeName" /></xsl:attribute><xsl:value-of select="AttributeName" /></xsl:element></th>
					</xsl:for-each>
					<th bgcolor="#9acd32">Value:<br/><a href="#Value"><xsl:value-of select="/Hash/ValueDescription/Attribute/AttributeName" /></a></th>
				</tr>
				<xsl:for-each select="/Hash/Table/Pair">
					<tr>
						<xsl:for-each select="Key">
							<td bgcolor="#ffcc33"><xsl:value-of select="." /></td>
						</xsl:for-each>
						<td bgcolor="#99ff99"><xsl:value-of select="Value" /></td>
					</tr>
				</xsl:for-each>
			</xsl:when>
			<xsl:when test="Mapping">
				<tr>
					<th bgcolor="#cc9933" colspan="2">Where values of <br/><xsl:element name="a"><xsl:attribute name="href">#<xsl:value-of select="/Hash/KeyDescriptions/Attribute/AttributeName" /></xsl:attribute><xsl:value-of select="/Hash/KeyDescriptions/Attribute/AttributeName" /></xsl:element> are:</th>
					<th bgcolor="#9acd32" rowspan="2">Set value of <br/><a href="#Value"><xsl:value-of select="/Hash/ValueDescription/Attribute/AttributeName" /></a> to:</th>
				</tr>
				<tr>
					<th bgcolor="#cc9933">Greater or Equal to</th>
					<th bgcolor="#cc9933">and Less Than</th>
				</tr>
				<xsl:for-each select="/Hash/Mapping/Range">
					<tr>
						<xsl:for-each select="GE">
							<td bgcolor="#ffcc33"><xsl:value-of select="." /></td>
						</xsl:for-each>
						<td bgcolor="#ffcc33"><xsl:value-of select="LT" /></td>
						<td bgcolor="#99ff99"><xsl:value-of select="Value" /></td>
					</tr>
				</xsl:for-each>
			</xsl:when>
		</xsl:choose>
		<tr><td colspan="3" align="center">-</td></tr>
	</xsl:for-each>
	</table>
<p/><hr/><p/>

<h3 id="keys">Key Descriptions</h3>
The key attributes used in the conversion are as follows:
	<table border="1" cellpadding="3">
	<xsl:for-each select="/Hash/KeyDescriptions/Attribute">
		<xsl:choose>
			<xsl:when test="Values/Nominal">
				<tr bgcolor="#cc9933"><th colspan="2"><xsl:element name="a"><xsl:attribute name="name"><xsl:value-of select="AttributeName" /></xsl:attribute></xsl:element><xsl:value-of select="AttributeName" /></th></tr>
				<tr><td align="right"><i>Title:</i></td><td><xsl:value-of select="Title" /></td></tr>
				<tr><td align="right"><i>Description:</i></td><td><xsl:value-of select="Description" /></td></tr>
				<tr><td align="right"><i>DataType:</i></td><td><xsl:value-of select="Values/Nominal/@type" /></td></tr>
				<tr><td align="right"><i>Length:</i></td><td><xsl:value-of select="Values/Nominal/@length" /></td></tr>
				<tr><td align="right"><i>Documentation:</i></td><td><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="Documentation" /></xsl:attribute><xsl:value-of select="Documentation" /></xsl:element></td></tr>
				<tr><td align="right"><i>Type of Attribute:</i></td><td>Nominal</td></tr>
				<tr><td colspan="2">
				<table width="100%" border="1" cellpadding="3">
					<tr><td  bgcolor="#cccccc">Key</td><td></td></tr>
					<xsl:for-each select="Values/Nominal/Classes/Value">
						<tr>
							<td align="center" bgcolor="#ffcc33"><xsl:value-of select="Identifier"/></td>
							<td>
								<table cellpadding="3">
									<tr><td align="right"><i>Title:</i></td><td><xsl:value-of select="Title"/></td></tr>
									<tr><td align="right" valign="top"><i>Abstract:</i></td><td><xsl:value-of select="Abstract"/></td></tr>
									<tr><td align="right"><i>Documentation:</i></td><td><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="Documentation" /></xsl:attribute><xsl:value-of select="Documentation" /></xsl:element></td></tr>
								</table>
							</td>
						</tr>
					</xsl:for-each>
				</table>
				</td>
				</tr>
			</xsl:when>
			<xsl:when test="Values/Ordinal">
				<tr bgcolor="#cc9933"><th colspan="2"><xsl:element name="a"><xsl:attribute name="name"><xsl:value-of select="AttributeName" /></xsl:attribute></xsl:element><xsl:value-of select="AttributeName" /></th></tr>
				<tr><td align="right"><i>Title:</i></td><td><xsl:value-of select="Title" /></td></tr>
				<tr><td align="right"><i>Description:</i></td><td><xsl:value-of select="Description" /></td></tr>
				<tr><td align="right"><i>DataType:</i></td><td><xsl:value-of select="Values/Ordinal/@type" /></td></tr>
				<tr><td align="right"><i>Length:</i></td><td><xsl:value-of select="Values/Ordinal/@length" /></td></tr>
				<tr><td align="right"><i>Documentation:</i></td><td><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="Documentation" /></xsl:attribute><xsl:value-of select="Documentation" /></xsl:element></td></tr>
				<tr><td align="right"><i>Type of Attribute:</i></td><td>Nominal</td></tr>
				<tr><td colspan="2">
				<table width="100%" border="1" cellpadding="3">
					<tr  bgcolor="#cccccc"><td>Key</td><td>Rank</td><td></td></tr>
					<xsl:for-each select="Values/Ordinal/Classes/Value">
						<tr>
							<td align="center" bgcolor="#ffcc33"><xsl:value-of select="Identifier"/></td>
							<td align="center" bgcolor="#9966cc"><xsl:value-of select="@rank"/></td>
							<td>
								<table cellpadding="3">
									<tr><td align="right"><i>Title:</i></td><td><xsl:value-of select="Title"/></td></tr>
									<tr><td align="right" valign="top"><i>Abstract:</i></td><td><xsl:value-of select="Abstract"/></td></tr>
									<tr><td align="right"><i>Documentation:</i></td><td><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="Documentation" /></xsl:attribute><xsl:value-of select="Documentation" /></xsl:element></td></tr>
								</table>
							</td>
						</tr>
					</xsl:for-each>
				</table>
				</td>
				</tr>
			</xsl:when>
			<xsl:when test="Values/Count">
				<tr bgcolor="#cc9933"><th colspan="2"><xsl:element name="a"><xsl:attribute name="name"><xsl:value-of select="AttributeName" /></xsl:attribute></xsl:element><xsl:value-of select="AttributeName" /></th></tr>
				<tr><td align="right"><i>Title:</i></td><td><xsl:value-of select="Title" /></td></tr>
				<tr><td align="right"><i>Description:</i></td><td><xsl:value-of select="Description" /></td></tr>
				<tr><td align="right"><i>DataType:</i></td><td><xsl:value-of select="Values/Count/@type" /></td></tr>
				<tr><td align="right"><i>Length:</i></td><td><xsl:value-of select="Values/Count/@length" /></td></tr>
				<tr><td align="right"><i>Documentation:</i></td><td><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="Documentation" /></xsl:attribute><xsl:value-of select="Documentation" /></xsl:element></td></tr>
				<tr><td align="right"><i>Type of Attribute:</i></td><td>Count</td></tr>
			</xsl:when>
		</xsl:choose>
		<tr><td colspan="3" align="center">-</td></tr>
	</xsl:for-each>
	</table>

<h3 id="Value">Value Description</h3>
The resultant value has the following characteristics:
	<table border="1" cellpadding="3">
	<xsl:for-each select="/Hash/ValueDescription/Attribute">
		<xsl:choose>
			<xsl:when test="Values/Nominal">
				<tr bgcolor="#9acd32"><th colspan="2"><xsl:element name="a"><xsl:attribute name="name"><xsl:value-of select="AttributeName" /></xsl:attribute></xsl:element><xsl:value-of select="AttributeName" /></th></tr>
				<tr><td align="right"><i>Title:</i></td><td><xsl:value-of select="Title" /></td></tr>
				<tr><td align="right"><i>Description:</i></td><td><xsl:value-of select="Description" /></td></tr>
				<tr><td align="right"><i>DataType:</i></td><td><xsl:value-of select="Values/Nominal/@type" /></td></tr>
				<tr><td align="right"><i>Length:</i></td><td><xsl:value-of select="Values/Nominal/@length" /></td></tr>
				<tr><td align="right"><i>Documentation:</i></td><td><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="Documentation" /></xsl:attribute><xsl:value-of select="Documentation" /></xsl:element></td></tr>
				<tr><td align="right"><i>Type of Attribute:</i></td><td>Nominal</td></tr>
				<tr><td colspan="2">
				<table width="100%" border="1" cellpadding="3">
					<tr><td  bgcolor="#cccccc">Values</td><td></td></tr>
					<xsl:for-each select="Values/Nominal/Classes/Value">
						<tr>
							<td align="center" bgcolor="#99ff99"><xsl:value-of select="Identifier"/></td>
							<td>
								<table cellpadding="3">
									<tr><td align="right"><i>Title:</i></td><td><xsl:value-of select="Title"/></td></tr>
									<tr><td align="right" valign="top"><i>Abstract:</i></td><td><xsl:value-of select="Abstract"/></td></tr>
									<tr><td align="right"><i>Documentation:</i></td><td><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="Documentation" /></xsl:attribute><xsl:value-of select="Documentation" /></xsl:element></td></tr>
								</table>
							</td>
						</tr>
					</xsl:for-each>
				</table>
				</td>
				</tr>
			</xsl:when>
			<xsl:when test="Values/Ordinal">
				<tr bgcolor="#9acd32"><th colspan="2"><xsl:element name="a"><xsl:attribute name="name"><xsl:value-of select="AttributeName" /></xsl:attribute></xsl:element><xsl:value-of select="AttributeName" /></th></tr>
				<tr><td align="right"><i>Title:</i></td><td><xsl:value-of select="Title" /></td></tr>
				<tr><td align="right"><i>Description:</i></td><td><xsl:value-of select="Description" /></td></tr>
				<tr><td align="right"><i>DataType:</i></td><td><xsl:value-of select="Values/Ordinal/@type" /></td></tr>
				<tr><td align="right"><i>Length:</i></td><td><xsl:value-of select="Values/Ordinal/@length" /></td></tr>
				<tr><td align="right"><i>Documentation:</i></td><td><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="Documentation" /></xsl:attribute><xsl:value-of select="Documentation" /></xsl:element></td></tr>
				<tr><td align="right"><i>Type of Attribute:</i></td><td>Nominal</td></tr>
				<tr><td colspan="2">
				<table width="100%" border="1" cellpadding="3">
					<tr  bgcolor="#cccccc"><td>Key</td><td>Rank</td><td></td></tr>
					<xsl:for-each select="Values/Ordinal/Classes/Value">
						<tr>
							<td align="center" bgcolor="#99ff99"><xsl:value-of select="Identifier"/></td>
							<td align="center" bgcolor="#9966cc"><xsl:value-of select="@rank"/></td>
							<td>
								<table cellpadding="3">
									<tr><td align="right"><i>Title:</i></td><td><xsl:value-of select="Title"/></td></tr>
									<tr><td align="right" valign="top"><i>Abstract:</i></td><td><xsl:value-of select="Abstract"/></td></tr>
									<tr><td align="right"><i>Documentation:</i></td><td><xsl:element name="a"><xsl:attribute name="href"><xsl:value-of select="Documentation" /></xsl:attribute><xsl:value-of select="Documentation" /></xsl:element></td></tr>
								</table>
							</td>
						</tr>
					</xsl:for-each>
				</table>
				</td>
				</tr>
			</xsl:when>
		</xsl:choose>
		<tr><td colspan="3" align="center">-</td></tr>
	</xsl:for-each>
	</table>


Add ordinal....
Add measure, Add count, Add ranges for measure and count - as a class table, not a hash table
Add multiple keys 
Format colours etc.


</center>
</body>
 </html>
</xsl:template>

</xsl:stylesheet>