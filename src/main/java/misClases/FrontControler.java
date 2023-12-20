package misClases;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;

@WebServlet("/FrontControler")
public class FrontControler extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public FrontControler() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion = null;
        TicketDAO ticketDAO = null;
        try {
            ticketDAO = new TicketDAO();
        } catch (ClassNotFoundException e) {
            System.out.println(e);
        }

        RequestDispatcher dispatcher = null;
        accion = request.getParameter("accion");

        if (accion == null || accion.isEmpty()) {
            dispatcher = request.getRequestDispatcher("vistas/conferencia.jsp");
        } else if (accion.equals("comprar")) {
            dispatcher = request.getRequestDispatcher("vistas/comprar-tickets.jsp");
        } else if (accion.equals("backoffice")) {
            dispatcher = request.getRequestDispatcher("vistas/backoffice.jsp");
        } else if (accion.equals("eliminar")) {
            int id = Integer.parseInt(request.getParameter("id"));
            ticketDAO.eliminar(id);
            dispatcher = request.getRequestDispatcher("vistas/backoffice.jsp");
        } else if (accion.equals("volver")) {
            dispatcher = request.getRequestDispatcher("vistas/conferencia.jsp");
        } else if (accion.equals("insertar")) {
            String nombre = request.getParameter("nombre");
            String apellido = request.getParameter("apellido");
            String mail = request.getParameter("mail");
            int cant = Integer.parseInt(request.getParameter("cant"));
            int categoria = Integer.parseInt(request.getParameter("categoria"));

            
            float total = calcularTotal(cant, categoria);

            Ticket ticket = new Ticket(0, nombre, apellido, mail, cant, categoria, total);
            ticketDAO.insertarTicket(ticket);
            dispatcher = request.getRequestDispatcher("vistas/conferencia.jsp");
        }

        dispatcher.forward(request, response);
    }

    private float calcularTotal(int cantidad, int categoria) {
       
        float precioBase = 200.0f;
        float descuento = 0.0f;

        switch (categoria) {
            case 1:
                descuento = 0.8f;
                break;
            case 2:
                descuento = 0.5f;
                break;
            case 3:
                descuento = 0.15f;
                break;
            default:
                break;
        }

        return cantidad * precioBase * (1 - descuento);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
