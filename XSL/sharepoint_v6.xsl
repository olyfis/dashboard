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
    width: 150px;
}
th.c, td.c {
    border: 1px solid black;
    width: 300px;
}

th.a, td.a {
    border: 1px solid black;
    width: 150px;
}
th.s, td.s {
    border: 1px solid black;
    width: 50px;
}
th.e, td.e {
    border: 1px solid black;
    width: 80px;
}



</style>

<!--
  <body style="font-family: sans-serif; color: black; font-size: 1;">
 --> 
  <body>
  <h2><center>Olympus FIS LIVE TRANSACTION DASHBOARD </center></h2>  
		<xsl:apply-templates select="SharePt_p"/>
	</body>
</html>
	 
	 

   
   </xsl:template>
   

 
	<xsl:template match="SharePt_p">
	 
	 
	<FONT SIZE="1px">
	<table border="1" class="a">
	<tr bgcolor="#5DADE2"  style="font-family: sans-serif; color: white;"  >
		<th class="a" width="150" >Contract ID</th>
		<th class="c">Customer Name</th>
		<th>City</th>
		<th class="s">State</th> 
		<th class="e">Equip Cost</th>
		<th class="e">Remaining Cost</th>
		<th class="e">Percentage Shipped</th>
		<th class="c">App Status</th>
		<th>Description</th>
		<th class="e">Quote Expiration Date</th>
		<th>Rep 1</th>
		<th>Rep 2</th>
		<th>Rep 3</th>
		<th>Comments</th>
		<th>Asset Data</th>
    </tr>
  
	
 <xsl:for-each select="SharePt_r "> 
 <xsl:sort select="CO_custName"/>
	  <xsl:variable name="altColor">
                <xsl:choose>
                    <xsl:when test="position() mod 2 = 0">#D7DBDD</xsl:when>
                    <xsl:otherwise>#AEB6BF</xsl:otherwise>
                </xsl:choose>
            </xsl:variable>
	 	  
    <tr bgcolor="{$altColor}"   >
		<td   class="a" width="150" > <xsl:value-of  select="APP_CONTRACT_NUMBER"  /></td>
		
		
	  
	
		<!--<td ><xsl:value-of  select="CO_custName" /></td> -->
		<td   class="c"> <xsl:value-of  select="CO_custName" /></td>
		<td  ><xsl:value-of  select="CO_custCity" /></td>
		<td class="s"><xsl:value-of  select="CO_custState" /></td>
	    <td class="e"><xsl:value-of  select="CO_equipmentCost" /></td>
		<td class="e"><xsl:value-of  select="Remain" /></td>
		<td class="e"><xsl:value-of  select="Percent" /></td>
		<td class="c"><xsl:value-of  select="CO_UD_CO_APP_STATUS_TBDESC" /></td>
		<td><xsl:value-of  select="DEFAULT_DESC" /></td>
		<td class="e"><xsl:value-of  select="APP_FOLLOW_UP_DATE" /></td>
		<td><xsl:value-of  select="MaxRep1" /></td>
		<td><xsl:value-of  select="MaxRep2" /></td>
		<td><xsl:value-of  select="MaxRep3" /></td>	
		<td><xsl:value-of  select="ShippingComments_UD_SC_SHIPPIN" /></td>	
		<td>
		
		
<a>
	<!-- <xsl:variable name="appId" select="//w:body/w:p[w:pPr[w:pStyle[@w:val='Heading1']]]"/> -->
	
	<xsl:variable name="appId" select="1234"/>
    <xsl:attribute name="href">
    <!--  <xsl:text>http://cvyhj1a18v:8181/asset/webapi/assetdata/</xsl:text> -->
	  
	  <xsl:text>http://cvyhj1a18v:8181/fisAssetServlet/readxml?appID=</xsl:text><xsl:value-of select="APP_CONTRACT_NUMBER"/>
	  
	  
      <!-- <xsl:value-of select="@OWS_ID"/> -->
   </xsl:attribute>
   <xsl:text>Asset Info</xsl:text>

 </a>
		
		</td>	
    </tr> 
	 </xsl:for-each>
	   
	  </table> 
	  </FONT>
  </xsl:template>
	
<xsl:attribute-set name="title-style">
  <xsl:attribute name="font-size">9pt</xsl:attribute>
  
</xsl:attribute-set>
 
 
</xsl:stylesheet>