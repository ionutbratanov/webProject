<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="parser.Firma" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Factura fiscala</title>
</head>
<body>
<style type="text/css">
    .tg  {border-collapse:collapse;border-spacing:0;border-color:#aabcfe;}
    .tg td{font-family:Arial, sans-serif;font-size:14px;padding:2px 20px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#aabcfe;color:#669;background-color:#e8edff;}
    .tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:2px 20px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#aabcfe;color:#039;background-color:#b9c9fe;}
    .tg .tg-9nx0{font-weight:bold;font-size:100%;font-family:"Arial Black", Gadget, sans-serif !important;;background-color:#ffffff;color:#000000;border-color:#000000;text-align:left;vertical-align:middle}
    .tg .tg-muc8{font-size:100%;background-color:#ffffff;color:#000000;border-color:#000000;text-align:left;vertical-align:middle}
    .tg .tg-6scy{font-weight:bold;text-decoration:underline;font-size:100%;font-family:"Arial Black", Gadget, sans-serif !important;;background-color:#ffffff;color:#000000;border-color:#000000;text-align:left;vertical-align:top}
    .tg .tg-0zv2{text-decoration:underline;font-size:100%;background-color:#ffffff;color:#000000;border-color:#000000;text-align:left;vertical-align:top}
    .tg .tg-wabs{font-size:100%;background-color:#ffffff;color:#000000;border-color:#000000;text-align:left;vertical-align:top}
    .tg .tg-awt2{font-size:100%;background-color:#ffffff;color:#000000;border-color:#000000;text-align:center;vertical-align:top}
</style>
<%
String tipFactura = pageContext.getAttribute("tipFactura", PageContext.SESSION_SCOPE).toString();
String nrFactura = pageContext.getAttribute("nrFactura", PageContext.SESSION_SCOPE).toString();
String dataFactura = pageContext.getAttribute("dataFactura", PageContext.SESSION_SCOPE).toString();
String produseServicii = pageContext.getAttribute("produseServicii", PageContext.SESSION_SCOPE).toString();
String uM = pageContext.getAttribute("uM", PageContext.SESSION_SCOPE).toString();
String cantitate = pageContext.getAttribute("cantitate", PageContext.SESSION_SCOPE).toString();
String pretUnitar = pageContext.getAttribute("pretUnitar", PageContext.SESSION_SCOPE).toString();
String persoanaEmitenta = pageContext.getAttribute("persoanaEmitenta", PageContext.SESSION_SCOPE).toString();
String valoare = pageContext.getAttribute("valoare", PageContext.SESSION_SCOPE).toString();
Firma firmaClient = (Firma)pageContext.getAttribute("firmaClient", PageContext.SESSION_SCOPE);
Firma firmaFurnizor = (Firma)pageContext.getAttribute("firmaFurnizor", PageContext.SESSION_SCOPE);
%>
<table class="tg">
<!-- Cod HTML prin care se creaza tabela Factura -->
    <tr>
        <th class="tg-9nx0" colspan="4">Furnizor:
        <%if (firmaFurnizor != null) { %>
        <%=firmaFurnizor.getDENUMIRE() %>
        <%} else {%>
        <input type='text' >
        <%} %>
         </th>
        <th class="tg-9nx0" colspan="3" rowspan="4" align="center">Factura <%=tipFactura %></th>
        <th class="tg-6scy" colspan="4">Client:
        <%if (firmaClient != null) { %>
        <%=firmaClient.getDENUMIRE() %>
        <%} else {%>
        <input type='text' >
        <%} %>
        </th>
    </tr>
    <tr>
        <td class="tg-9nx0" colspan="4">CUI:
        <%if (firmaFurnizor != null) { %>
        <%=firmaFurnizor.getCUI() %>
        <%} else {%>
        <input type='text' >
        <%} %>
           
          </td>
        <td class="tg-9nx0" colspan="4">CUI:
        <%if (firmaClient != null) { %>
        <%=firmaClient.getCUI() %>
        <%} else {%>
        <input type='text' >
        <%} %>
        </td>
    </tr>
    <tr>
        <td class="tg-9nx0" colspan="4">COD_ORC:
        <%if (firmaFurnizor != null) { %>
        <%=firmaFurnizor.getCOD_INMATRICULARE() %>
        <%} else {%>
        <input type='text' >
        <%} %>        
         </td>
        <td class="tg-9nx0" colspan="4">COD_ORC: 
        <%if (firmaClient != null) { %>
        <%=firmaClient.getCOD_INMATRICULARE() %>
        <%} else {%>
        <input type='text' >
        <%} %>
        </td>
    </tr>
    <tr>
        <td class="tg-9nx0" colspan="4">Adresa: 
        <%if (firmaFurnizor != null) { %>
        <%=firmaFurnizor.getADRESA() %>
        <%} else {%>
        <input type='text' >
        <%} %> 
        </td>
        <td class="tg-9nx0" colspan="4">Adresa: 
         <%if (firmaClient != null) { %>
        <%=firmaClient.getADRESA() %>
        <%} else {%>
        <input type='text' >
        <%} %>
        </td>
    </tr>
    <tr>
        <td class="tg-9nx0" colspan="4">Banca   <input type='text' > </td>
        <td class="tg-muc8" colspan="3">Factura numar: <%=nrFactura %></td>
        <td class="tg-9nx0" colspan="4">Banca   <input type='text' ></td>
    </tr>
    <tr>
        <td class="tg-9nx0" colspan="4">Cont   <input type='text' ></td>
        <td class="tg-muc8" colspan="3">Data: <%=dataFactura %> </td>
        <td class="tg-9nx0" colspan="4">Cont   <input type='text' ></td>
    </tr>
    <tr>
        <td class="tg-muc8">Nr.<br> Crt.</td>
        <td class="tg-muc8" colspan="3">Denumirea produselor sau a<br> serviciilor (lucrarilor)</td>
        <td class="tg-muc8">U.M.</td>
        <td class="tg-muc8" colspan="2">Cantitatea</td>
        <td class="tg-muc8" colspan="2">Pretul unitar <br>(fara TVA)<br>   - RON -</td>
        <td class="tg-muc8" colspan="2">Valoare</td>
    </tr>
    <tr>
       <td class="tg-muc8">1</td>
        <td class="tg-muc8" colspan="3"><%=produseServicii %></td>
        <td class="tg-muc8"><%=uM %></td>
        <td class="tg-muc8" colspan="2"><%=cantitate %></td>
        <td class="tg-muc8" colspan="2"><%=pretUnitar %></td>
        <td class="tg-muc8" colspan="2"><%=valoare %></td>
    </tr>
    <tr>
        <td class="tg-muc8">2</td>
        <td class="tg-muc8" colspan="3"></td>
        <td class="tg-muc8"></td>
        <td class="tg-muc8" colspan="2"></td>
        <td class="tg-wabs" colspan="2"></td>
        <td class="tg-wabs" colspan="2"></td>
    </tr>
    <tr>
        <td class="tg-muc8">3</td>
        <td class="tg-muc8" colspan="3"></td>
        <td class="tg-muc8"></td>
        <td class="tg-muc8" colspan="2"></td>
        <td class="tg-wabs" colspan="2"></td>
        <td class="tg-wabs" colspan="2"></td>
    </tr>
    <tr>
        <td class="tg-muc8">4</td>
        <td class="tg-muc8" colspan="3"></td>
        <td class="tg-muc8"></td>
        <td class="tg-muc8" colspan="2"></td>
        <td class="tg-wabs" colspan="2"></td>
        <td class="tg-wabs" colspan="2"></td>
    </tr>
    <tr>
        <td class="tg-muc8">5</td>
        <td class="tg-muc8" colspan="3"></td>
        <td class="tg-muc8"></td>
        <td class="tg-muc8" colspan="2"></td>
        <td class="tg-wabs" colspan="2">Semnatura</td>
        <td class="tg-wabs" colspan="2">Total de plata</td>
    </tr>
    <tr>
        <td class="tg-muc8">6</td>
        <td class="tg-muc8" colspan="3"></td>
        <td class="tg-muc8"></td>
        <td class="tg-muc8" colspan="2"></td>
        <td class="tg-wabs" colspan="2">de primire</td>
        <td class="tg-wabs" colspan="2" rowspan="4"><%=valoare %> RON</td>
    </tr>
    <tr>
        <td class="tg-wabs" colspan="7">Factura valabila online cf art. 319, alin. 29, din Legea 227/2016 privind Codul Fiscal</td>
        <td class="tg-wabs" colspan="2" rowspan="3"></td>
    </tr>
    <tr>
        <td class="tg-wabs" colspan="2">Emis de:</td>
        <td class="tg-wabs" colspan="3"></td>
        <td class="tg-wabs" colspan="2" rowspan="2"></td>
    </tr>
    <tr>
        <td class="tg-wabs" colspan="2"><%=persoanaEmitenta %></td>
        <td class="tg-wabs" colspan="3"></td>
    </tr>
</table>


<button onclick="myFunction()">Print this page</button>

<script>
function myFunction() {
  window.print();
}
</script>

</body>

</html>