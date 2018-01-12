<%@ LANGUAGE="VBScript" %>

<%
Option Explicit

Dim connection
Set connection = Server.CreateObject("ADODB.Connection")
connection.Open "DSN=Employees"

Dim statement
statement = "SELECT * FROM Employees"

Dim resultset
Set resultset = Connection.Execute(statement)
%>

<html>
<title>Employee Listing</title>
<body bgcolor="DDFFFF">

<h1>Employee Information</h1>

<table border="1" width="25%">
<tr>
    <td><b> Employee Name </b></td>
    <td><b> Salary </b></td>
</tr>

<% Do While Not resultset.EOF %>
<tr>
    <td> <%= resultset.Fields("Name") %> </td>
    <td> <%= resultset.Fields("Salary") %>   </td>
</tr>

<% 
resultset.MoveNext
Loop
%>

</table>

</body>
</html>

<% connection.Close %>

