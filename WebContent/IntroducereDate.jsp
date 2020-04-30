<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@ include file = "header.jsp" %>

<%--Cream un formular in clasa JSP, in care se vor introduce 
de utilizator a tuturor datelor cerute --%>
<form action="LoadFromCsv" method=POST>

<table id="factura" border="1">
		<tr>
			<th style="background-color:#0F0;">Introduceti CUI furnizor</th>
			<th>     </th>
			<th style="background-color:#0FB;">Introduceti CUI client</th>
		</tr>
		<tr>
			<td style="text-align:center;"><input type="text" name="CUIFurnizor" value="" 
					style="text-align:center;" required></td>
			<td>_____________</td>
			<td style="text-align:center;"><input type="text" name="CUIClient" value="" 
					style="text-align:center;" required></td>
		</tr>	
		<tr>
			<td colspan="3" align="center">------------------</td>
		</tr>
		<tr>
			<th style="background-color:#FF0;">Introduceti numar factura</th>
			<th>     </th>
			<th style="background-color:#FF0;">Introduceti data factura</th>
		</tr>
		<tr>
			<td style="text-align:center"> <input type="text" name="NrFactura" value="" min="1" align="center" required></td>
			<td>     </td>
			<!-- <td><input type="text" name="DataFactura" value=" "></td>  -->
			<td style="text-align:center;"><input type="date" name="DataFactura" 
					min="2018-01-01" max="2050-12-31" required></td>
		</tr>
		<tr>
			<td colspan="3" align="center">------------------</td>
		</tr>
		<tr>
			<th style="background-color:#FF0;">Introduceti persoana emitenta</th>
			<td colspan="2"><input type="text" name="PersoanaEmitenta" value=" "></td>
		</tr>
		<tr>
			<td colspan="3" align="center">------------------</td>
		</tr>
		<tr>
			<th colspan="3" align="right"><input type="submit" value="Submit"
					style="font-size:150%; color:red; background-color:#0FF; font-family:" ></th>
		</tr>

</table>
  
  
    Introduceti denumire produse sau servicii:<br>
  <input type="text" name="ProduseServicii" value=" "><br>
  Introduceti unitatea monetara:<br>
  <input type="text" name="UM" value=" "><br>
  Introduceti cantitatea:<br>
  <input type="text" name="Cantitate" value=" "><br>
  Introduceti pret unitar:<br>
  <input type="text" name="PretUnitar" value=" "><br>
  
</form>

<br>
<br>

Dupa afisare factura:</br>
Apasati CTRL+P, selectati imprimanta "Save as PDF", salvati factura in format PDF
</body>
</html>