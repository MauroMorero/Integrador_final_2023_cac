<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="misClases.Ticket"%>
<%@ page import="misClases.TicketDAO"%>
<%@ page import="java.util.List"%>


<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Back Office</title>
    <script src="https://kit.fontawesome.com/42ed4870f7.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="ccs/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
    <div class="container">
        <h1 class="text-primary">Panel de Control</h1>
        <div class="row">
            <table class="table">
                <thead>
                    <th>Id venta</th>
                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>Mail</th>
                    <th>Cantidad</th>
                    <th>Tipo</th>
                    <th>Total</th>
                    <th>Eliminar</th>
                </thead>
                <tbody>
                    <%
					List<Ticket> resultado=null;
					TicketDAO ticket=new TicketDAO();
					resultado=ticket.listarTicket();
					int totalFacturado=0;
					
					for(int x=0;x<resultado.size();x++)
					{
				   
					String rutaE="FrontControler?accion=eliminar&id="+resultado.get(x).getId();	
					String tipoTicketTexto;
					if(resultado.get(x).getTipo_ticket()==1)
					{
						tipoTicketTexto="Estudiante";
					}
					else if(resultado.get(x).getTipo_ticket()==2)
					{
						tipoTicketTexto="Trainee";
					}
					else
					{
						tipoTicketTexto="Junior";
					}					
					%>
					<tbody>
					<tr>
					  	<td><%=resultado.get(x).getId()%></td>
					  	<td><%=resultado.get(x).getNombre()%></td>
					  	<td><%=resultado.get(x).getApellido()%></td>
					  	<td><%=resultado.get(x).getMail()%></td>
					  	<td><%=resultado.get(x).getCant()%></td>
					  	<td><%=tipoTicketTexto%></td>
					  	<td><%=resultado.get(x).getTotal_facturado()%></td>
					  	<td class="text-center"><a href=<%=rutaE%>> <i class="fa-solid fa-bug"></i></a> </td>
					</tr>	
					
					<%
					totalFacturado+=resultado.get(x).getTotal_facturado();
					}
					%>		
					
                    <tr>
                        <td colspan="5"></td>
                        <td class="text-danger"><%=totalFacturado%></td>
                        <td></td>
                    </tr>
                </tbody>
            </table>

            <a class="btn btn-success col-2 m-2" href="FrontControler?accion=volver">Volver</a>
        </div>
    </div>
</body>
</html>
