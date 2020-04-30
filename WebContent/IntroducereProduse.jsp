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
<!-- 
  Introduceti CUI furnizor:<br>
  <input type="text" name="CUIFurnizor" value=" "><br>
  Introduceti CUI client:<br>
  <input type="text" name="CUIClient" value=" "><br>

  Introduceti numar factura:<br>
  <input type="text" name="NrFactura" value=" "><br>
  Introduceti data factura:<br>
  <input type="text" name="DataFactura" value=" "><br>
     -->
     
  Introduceti denumire produse sau servicii:<br>
  <input type="text" name="ProduseServicii" value=" "><br>
  Introduceti unitatea monetara:<br>
  <input type="text" name="UM" value=" "><br>
  Introduceti cantitatea:<br>
  <input type="text" name="Cantitate" value=" "><br>
  Introduceti pret unitar:<br>
  <input type="text" name="PretUnitar" value=" "><br>
  <!-- 
  Introduceti persoana emitenta:<br>
  <input type="text" name="PersoanaEmitenta" value=" "><br><br>
    -->
  <input type="submit" value="Submit">
</form>

Dupa afisare factura:</br>
Apasati CTRL+P, selectati imprimanta "Save as PDF", salvati factura in format PDF
</body>
</html>