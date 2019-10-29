<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%--Cream un formular in clasa JSP, in care se vor introduce 
de utilizator a tuturor datelor cerute --%>
<form action="LoadFromCsv" method="post">
	<table>
		<tr>
		<th align="right">Tip factura: fiscala / proforma</th>
	  	<td><input type="radio" name="tipFactura" value="Fiscala" checked="checked"> Factura fiscala <Br/>
	  	<input type="radio" name="tipFactura" value="Proforma"> Factura proforma</td>
	</tr>
	<tr>
		<th align="right">Introduceti CUI furnizor:</th>
	  	<td><input type="text" name="CUIFurnizor" value=""></td>
	</tr>
	<tr>
	  <th align="right">Introduceti CUI client:</th>
	  <td><input type="text" name="CUIClient" value=""></td>
	</tr>
	<tr>
	  <th align="right">Introduceti numar factura:</th>
	  <td><input type="text" name="NrFactura" value=""></td>
	</tr>
	<tr>
	  <th align="right">Introduceti data factura: 
	  <td><input type="text" name="DataFactura" value=""></td>
	</tr>
	<tr>
	  <th align="right">Introduceti denumire produse sau servicii:</th>
	  <td><input type="text" name="ProduseServicii" value=""></td>
	</tr>
	<tr>
	  <th align="right">Introduceti unitatea monetara: </th>
	  <!-- <td><input type="text" name="UM" value=""></td> -->
	  <td><input type="radio" name="UM" value="RON" checked="checked"> RON <Br/>
	  	<input type="radio" name="UM" value="EURO"> EURO<Br/>
	  	<input type="radio" name="UM" value="MDL"> MDL<Br/>
	  	<input type="radio" name="UM" value="USD"> USD</td>
	</tr>
	<tr>
	  <th align="right">Introduceti cantitatea:</th>
	  <td><input type="text" name="Cantitate" value=""></td>
	</tr>
	<tr>
	  <th align="right">Introduceti pret unitar:</th>
	  <td><input type="text" name="PretUnitar" value=""></td>
	</tr>
	<tr>
	  <th align="right">Introduceti persoana emitenta:</th>
	  <td><input type="text" name="PersoanaEmitenta" value=""></td><br>
	</tr>
	<tr>
	  <td align="center" colspan="2"><input type="submit" value="Submit">
  </table>
</form>

Dupa afisare factura:</br>
Apasati CTRL+P, selectati imprimanta "Save as PDF", salvati factura in format PDF
</body>
</html>