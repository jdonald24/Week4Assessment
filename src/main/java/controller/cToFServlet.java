package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.TempConverter;

/**
 * Servlet implementation class cToFServlet
 */
@WebServlet("/cToFServlet")
public class cToFServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public cToFServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String celsius = request.getParameter("celsius");
		TempConverter converter = new TempConverter (Double.parseDouble(celsius), 0);
		converter.cToF();
		request.setAttribute("converter", converter);
		getServletContext().getRequestDispatcher("/cResults.jsp").forward(request, response);
	}

}
