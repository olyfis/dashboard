<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:fo="http://www.w3.org/1999/XSL/Format"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" indent="yes"/>
<xsl:template match="/">
 
<html>
<style TYPE="text/css">
  td {
  font-size: 12px;
  font-weight: normal;
  margin-top: 5px;
}
table.a {
    table-layout: auto;  
}

th, td {
    border: 1px solid black;
    width: 100px;
}
th.a, td.a {
    border: 1px solid black;
    width: 20px;
}

</style>
  <body style="font-family: sans-serif; color: black; font-size: 1;">
		<xsl:apply-templates select="Bobj_p"/>
	</body>
</html>
	 
   </xsl:template>
   
	<xsl:template match="Bobj_p">
	<h2>Olympus FIS Dashboard Report</h2>   
	 
	<FONT SIZE="1px">
	<table border="1" class="a">
<tr bgcolor="#5DADE2"  style="font-family: sans-serif; color: white;"  >
		<th class="a" >App Number</th>
		<th>Overall Status</th>
		<th>Category </th>
		<th>Material Group</th>
		<th>Material_Model</th> 	
    </tr>

	
 <xsl:for-each select="Bobj_r "> 
	  <xsl:variable name="altColor">
                <xsl:choose>
                    <xsl:when test="position() mod 2 = 0">#D7DBDD</xsl:when>
                    <xsl:otherwise>#AEB6BF</xsl:otherwise>
                </xsl:choose>
            </xsl:variable>
	 	  
    <tr bgcolor="{$altColor}"   >
		<td   class="a"> <xsl:value-of  select="Customer_PO"  /></td>
		<td>
		
		<!-- <xsl:value-of  select="Overall_Status" /> -->
	 <xsl:variable name="C_STAT" select="Shipped"/>
	 <xsl:variable name="A_STAT" select="Ordered"/>
	 <!-- <xsl:if test="./Bobj_p/Bobj_r[@Overall_Status='C']" > -->
	 
 
			<xsl:choose>
                    <xsl:when test="Overall_Status = 'C' ">Shipped</xsl:when>
                    <xsl:otherwise>On-Order</xsl:otherwise>
            </xsl:choose>
	 
	 
	 
		</td>
		<td ><xsl:value-of  select="Item_Category" /></td>
		<td><xsl:value-of  select="Material_Group" /></td>
		<td><xsl:value-of  select="Material_Model_Number" /></td>

    </tr> 
	 </xsl:for-each>
	   
	  </table> 
	  </FONT>
  </xsl:template>
	
<xsl:attribute-set name="title-style">
  <xsl:attribute name="font-size">9pt</xsl:attribute>
  
</xsl:attribute-set>
 
 
</xsl:stylesheet>