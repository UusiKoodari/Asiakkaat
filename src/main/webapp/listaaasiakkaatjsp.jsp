<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#listaus {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#listaus td, #listaus th {
  border: 1px solid #ddd;
  padding: 8px;
}

#listaus tr:nth-child(even){background-color: #f2f2f2;}

#listaus tr:hover {background-color: #ddd;}

#listaus th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #04AA6D;
  color: white;
}
</style>
</head>
<body>
<table id="listaus">
	<thead>	
		<tr>
			<th>Hakusana:</th>
			<th colspan="2"><input type="text" id="hakusana"></th>
			<th><input type="button" value="hae" id="hakunappi" onclick="haeAsiakkaat()"></th>
		</tr>		
		<tr>
			<th>Etunimi</th>
			<th>Sukunimi</th>
			<th>Puhelin</th>
			<th>Sposti</th>
			
		</tr>
	</thead>
	<tbody id="tbody">
	</tbody>
</table>
<span id="ilmo"></span>
<script>
function haeAsiakkaat() {
		let url = "asiakkaat1?hakusana=" + document.getElementById("hakusana").value; 
		let requestOptions = {
	        method: "GET",
	        headers: { "Content-Type": "application/x-www-form-urlencoded" }       
	    };    
	    fetch(url, requestOptions)
	    .then(response => response.json())//Muutetaan vastausteksti JSON-objektiksi 
	   	.then(response => printItems(response)) 
	   	.catch(errorText => console.error("Fetch failed: " + errorText));
	}
	function printItems(respObjList){
		let htmlStr="";
		for(let item of respObjList) {
			htmlStr+="<tr id='rivi_"+item.asiakas_id+"'>";
			htmlStr+="<td>"+item.etunimi+"</td>";
			htmlStr+="<td>"+item.sukunimi+"</td>";
			htmlStr+="<td>"+item.puhelin+"</td>";
			htmlStr+="<td>"+item.sposti+"</td>";
			htmlStr+="</tr>";  	
		}	
		document.getElementById("tbody").innerHTML = htmlStr;	
	}
	

</script>

</body>
</html>