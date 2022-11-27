<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Asiakkaiden listaus</title>
<link rel="stylesheet" type="text/css" href="css/tyyli.css">
</head>
<body>
<table id="listaus">
	<thead>	
		<tr>
		<th colspan="5" class="oikealle"><a id="linkki" href="lisaaasiakas.jsp">Lisää asiakas</a></th>
		</tr>
		<tr>
			<th>Hakusana:</th>
			<th colspan="2"><input type="text" id="hakusana"></th>
			<th><input type="button" value="Hae" id="hakunappi" onclick="haeAsiakkaat()"></th>
			<th></th>
		</tr>		
		<tr>
			<th>Etunimi</th>
			<th>Sukunimi</th>
			<th>Puhelin</th>
			<th>Sähköposti</th>
			<th></th>
			
		</tr>
	</thead>
	<tbody id="tbody">
	</tbody>
</table>
<span id="ilmo"></span>
<script src="scripts/main.js"></script>

</body>
</html>