<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:fo="http://www.w3.org/1999/XSL/Format"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">





  <xsl:output method="html" indent="yes"/>
<xsl:template match="/">
 
   
   
   
<html>
  <body style="font-family: sans-serif; color: black; font-size: 1;">
		<xsl:apply-templates select="SharePt_p"/>
	</body>
</html>
	 
	 

   
   </xsl:template>
   
 
	<xsl:template match="SharePt_p">
	<!-- <h2>Olympus FIS Dashboard Report</h2>   -->
	<FONT SIZE="1px">
	<table border="1">
	<tr bgcolor="#5DADE2"  style="font-family: sans-serif; color: white;"  >
		<th >App Number</th>
		<th>Contract Number</th>
		<th>Customer Name </th>
		<th>City</th>
		<th>State</th> 
		<th>Equip Cost</th>
		<th>Program Type</th>
		<th>Branch</th>
		<th>App Status</th>
		<th>Description</th>
		<th>Follow-up Date</th>
		<th>Rep 1</th>
		<th>Rep 2</th>
		<th>Rep 3</th>
		<th>Comments</th>			
    </tr>

	
 <xsl:for-each select="SharePt_r "> 
	  <xsl:variable name="altColor">
                <xsl:choose>
                    <xsl:when test="position() mod 2 = 0">#D7DBDD</xsl:when>
                    <xsl:otherwise>#AEB6BF</xsl:otherwise>
                </xsl:choose>
            </xsl:variable>
	 	  
    <tr bgcolor="{$altColor}"   >
		<td  > <xsl:value-of  select="APP_KEY"  /></td>
		<td><xsl:value-of  select="APP_CONTRACT_NUMBER" /></td>
		<td ><xsl:value-of  select="CO_custName" /></td>
		<td><xsl:value-of  select="CO_custCity" /></td>
		<td><xsl:value-of  select="CO_custState" /></td>
	    <td><xsl:value-of  select="CO_equipmentCost" /></td>
		<td><xsl:value-of  select="CO_programType_TBDESC" /></td>
		<td><xsl:value-of  select="CO_branch_TBDESC" /></td>
		<td><xsl:value-of  select="CO_UD_CO_APP_STATUS_TBDESC" /></td>
		<td><xsl:value-of  select="DEFAULT_DESC" /></td>
		<td><xsl:value-of  select="APP_FOLLOW_UP_DATE" /></td>
		<td><xsl:value-of  select="MaxRep1" /></td>
		<td><xsl:value-of  select="MaxRep2" /></td>
		<td><xsl:value-of  select="MaxRep3" /></td>	
		<td><xsl:value-of  select="ShippingComments_UD_SC_SHIPPIN" /></td>	
    </tr> 
	 </xsl:for-each>
	   
	  </table> 
	  </FONT>
  </xsl:template>
	
<xsl:attribute-set name="title-style">
  <xsl:attribute name="font-size">9pt</xsl:attribute>
  
</xsl:attribute-set>
 
 
</xsl:stylesheet>