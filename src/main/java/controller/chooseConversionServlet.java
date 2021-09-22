package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class chooseConversionServlet
 */
@WebServlet("/chooseConversionServlet")
public class chooseConversionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public chooseConversionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String userChoice = request.getParameter("userChoice");
		if(userChoice.equals("f")) {
			getServletContext().getRequestDispatcher("/fToC.jsp").forward(request, response);
		} else {
			getServletContext().getRequestDispatcher("/cToF.jsp").forward(request, response);
		}
	}

}
