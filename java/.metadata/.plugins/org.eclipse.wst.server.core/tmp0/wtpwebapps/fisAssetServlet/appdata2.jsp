<%@page import="java.io.OutputStream"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>    
<%@ page import="java.io.File"%>
<%@ page import="java.util.ArrayList"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FIS Dashboard</title>

<style TYPE="text/css">
  td {
  font-size: 12px;
  font-weight: normal;
  margin-top: 5px;
}
table.a {
    table-layout: auto;  
}

tr.odd { background-color: black; }
tr.even { background-color: white; }

th, td {
    border: 1px solid black;
    width: 100px;
}
th.a, td.a {
    border: 1px solid black;
    width: 20px;
     
}
th.b, td.b {
    border: 1px solid black;
    width: 20px;
    background-color: #5DADE2;
}

  tr.b {
    border: 1px solid black;
    width: 20px;
    background-color: deepskyblue;
}

</style>
</head>
<body style="font-family: sans-serif; color: black; font-size: 1;">
      <h2>Olympus FIS LIVE TRANSACTION DASHBOARD </h2><FONT SIZE="1px"> </FONT>
      
      


<%!  
public String TableHeader(){

	String thead = null;
	String color1 = "#5DADE2";
	String style1 = "font-family: sans-serif; color: white;";
	  
	//thead = "<tr bgcolor=" + color1 +  "style=" + style1 + ">";
	thead = "<tr class=\"b\" "  +  "style=" + style1 + ">";
	
	//thead += "<th class=\"b\">App Number</th>";
	thead += "<th>App Number</th>";
	thead += "<th>Overall Status</th>";
	thead += "<th>Category</th>";
	thead += "<th>Material Group</th>";
	thead += "<th>Material_Models</th>";
	thead += "</tr>";	
	return thead;
} 
%>

<% 
String  s1  = (String) session.getAttribute("APP_ID");        
%>
  

<%


//retrieve your list from the request, with casting 
ArrayList<String> list = new ArrayList<String>();
String rowColor = null;
list = (ArrayList<String>) session.getAttribute("xData");
//out.println("listSize=" + list.size());
	if (list.size() > 0 ) {
		String xDataItem = null;
		String color1 = "plum";
		String style1 = "font-family: sans-serif; color: white;";
		out.println("<table border=\"1\" class=\"a\"> ");
		 
		out.println("<tr bgcolor=" + color1 +  "style=" + style1 + ">" );
		out.println(TableHeader());
	 
		String rowEven = "#D7DBDD";
		String rowOdd = "AEB6BF";
		for(int i = 0; i < list.size(); i++) { 
	 
				rowColor = (i % 2 == 0) ? rowEven : rowOdd;
			out.println("<tr bgcolor=" + rowColor +  ">");
			xDataItem = list.get(i);
			//out.println( xDataItem  );
			//out.println( "<br>");
			String token_list[] = xDataItem.split(":");	
			 for(int x=0; x <token_list.length; x++) {
				 out.println("<td class=\"odd\">"   + token_list[x] + "</td>"  );			        
			}
			 out.println("</tr>");
		}	
		 
		out.println("</table> ");
		
	} else {
		out.println( "No Asset data to display." + "<br>");
	}

%>
 
 

</body>
</html>




  