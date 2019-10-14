<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ page import="java.util.*" %>
  <%@ page import="date.Contact" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Agenda</title>

<style>
table, th, td {
  border: 1px solid black;
  padding: 5px;
}

</style>
</head>

<body>
Prima paginaaa!Hello!

<%
String lista = pageContext.getAttribute("lista", PageContext.SESSION_SCOPE).toString();
List listaContacte = (List) pageContext.getAttribute("listaContacte", PageContext.SESSION_SCOPE);
%>
<%=lista %>
<table style="width:100%">
 <tr>
    <th>Nume</th>
    <th>Prenume</th>
    <th>Telefon</th>
    <th>Info</th><th>
    </th><th>
    </th>
 </tr>
 
 
 <% for(int i=0; i < listaContacte.size(); i++){ %>
 <% Contact contact = (Contact) listaContacte.get(i); %>
  <tr>
    <td><%=contact.getNume() %></td>
    <td><%=contact.getPrenume() %></td>
    <td><%=contact.getTelefon() %></td>
    <td><%=contact.getInfo() %></td>
    <td><button type="button">Delete</button>
    <td><button type="button">Edit</button>
  </tr>
 <%} %>
  
</table>


</body>
</html>