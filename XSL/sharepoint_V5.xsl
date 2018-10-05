<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:fo="http://www.w3.org/1999/XSL/Format"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">





  <xsl:output method="html" indent="yes"/>
<xsl:template match="/">
 
   
   
   
<html><head>
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

/* Extra selectors needed to override the default styling */
table.tablesorter tbody tr.normal-row td {
  background: #D7DBDD;
  color: #000;
}
table.tablesorter tbody tr.alt-row td {
  background: #AEB6BF;
  color: #000;
}


.tablesorter-blue .header,
.tablesorter-blue .tablesorter-header {
	/* black (unsorted) double arrow */
	background-image: url(data:image/gif;base64,R0lGODlhFQAJAIAAACMtMP///yH5BAEAAAEALAAAAAAVAAkAAAIXjI+AywnaYnhUMoqt3gZXPmVg94yJVQAAOw==);
	/* white (unsorted) double arrow */
	/* background-image: url(data:image/gif;base64,R0lGODlhFQAJAIAAAP///////yH5BAEAAAEALAAAAAAVAAkAAAIXjI+AywnaYnhUMoqt3gZXPmVg94yJVQAAOw==); */
	/* image */
	/* background-image: url(images/black-unsorted.gif); */
	background-repeat: no-repeat;
	background-position: center right;
	padding: 4px 18px 4px 4px;
	white-space: normal;
	cursor: pointer;
}
.tablesorter-blue .headerSortUp,
.tablesorter-blue .tablesorter-headerSortUp,
.tablesorter-blue .tablesorter-headerAsc {
	background-color: #9fbfdf;
	/* black asc arrow */
	background-image: url(data:image/gif;base64,R0lGODlhFQAEAIAAACMtMP///yH5BAEAAAEALAAAAAAVAAQAAAINjI8Bya2wnINUMopZAQA7);
	/* white asc arrow */
	/* background-image: url(data:image/gif;base64,R0lGODlhFQAEAIAAAP///////yH5BAEAAAEALAAAAAAVAAQAAAINjI8Bya2wnINUMopZAQA7); */
	/* image */
	/* background-image: url(images/black-asc.gif); */
}
.tablesorter-blue .headerSortDown,
.tablesorter-blue .tablesorter-headerSortDown,
.tablesorter-blue .tablesorter-headerDesc {
	background-color: #8cb3d9;
	/* black desc arrow */
	background-image: url(data:image/gif;base64,R0lGODlhFQAEAIAAACMtMP///yH5BAEAAAEALAAAAAAVAAQAAAINjB+gC+jP2ptn0WskLQA7);
	/* white desc arrow */
	/* background-image: url(data:image/gif;base64,R0lGODlhFQAEAIAAAP///////yH5BAEAAAEALAAAAAAVAAQAAAINjB+gC+jP2ptn0WskLQA7); */
	/* image */
	/* background-image: url(images/black-desc.gif); */
}
.tablesorter-blue thead .sorter-false {
	background-image: none;
	cursor: default;
	padding: 4px;
}






</style>

<!-- <link href="http://mottie.github.io/tablesorter/css/theme.default.css" rel="stylesheet"> -->
     
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script> 
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery.tablesorter/2.9.1/jquery.tablesorter.min.js"></script>
   <script type="text/javascript"> 
   
   
   
   </script>
   
   <!-- Call jQuery code -->
   
    <script>
	/*
$(function(){
          $("#dash").tablesorter({widgets: ['zebra']});
        });
	*/


$(function() {

  // call the tablesorter plugin
  $("table").tablesorter({
    theme: 'blue',
    // initialize zebra striping of the table
    widgets: ["zebra"],
    // change the default striping class names
    // updated in v2.1 to use widgetOptions.zebra = ["even", "odd"]
    // widgetZebra: { css: [ "normal-row", "alt-row" ] } still works
    widgetOptions : {
      zebra : [ "normal-row", "alt-row" ]
    }
  });

});	
		
		
    </script>
 	<script type="text/javascript">
        $(document).ready(function () {
			
			$('#ajaxBtn').click(function(){
			
			
				$.get('http://cvyhj3a27:8181/dashboard/fis/getdate', function(data, textStatus, jqXHR){
                alert("Data last updated on: " + data);
			})
			//.done(function () { alert('Request done!'); })
			.fail(function (jqxhr,settings,ex) { alert('failed, '+ ex); 
			});
		});
    });
    </script>
</head>
  <body>
  
	<center>
      <h2>Olympus FIS LIVE TRANSACTION DASHBOARD</h2>
	 <p> <input type="button" id="ajaxBtn" value="Last Update Date" /> </p>
	  
	   </center>
		
		
		
		<xsl:apply-templates select="SharePt_p"/>
		
		
		
	</body>
</html>
	 
	 

   
   </xsl:template>

	<xsl:template match="SharePt_p">
	 
	 
	<FONT SIZE="1px">
	<table  border="1" class="tablesorter">
	<thead>
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
  </thead>
  <tbody>
	
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
	  
	  <xsl:text>http://cvyhj3a27:8181/fisAssetServlet/readxml?appID=</xsl:text><xsl:value-of select="APP_CONTRACT_NUMBER"/>  
	  
	  
      <!-- <xsl:value-of select="@OWS_ID"/> -->
   </xsl:attribute>
   <xsl:text>Asset Info</xsl:text>

 </a>
		
		</td>	
    </tr> 
	 </xsl:for-each>
	   </tbody>
	  </table> 
	  </FONT>
  </xsl:template>
	
<xsl:attribute-set name="title-style">
  <xsl:attribute name="font-size">9pt</xsl:attribute>
  
</xsl:attribute-set>
 
 
</xsl:stylesheet>