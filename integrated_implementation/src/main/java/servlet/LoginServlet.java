package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vo.LoginDTO;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		request.setAttribute("id", id);
		String pass = request.getParameter("pass");
		request.setAttribute("pass", pass);
		String login = request.getParameter("login");
		request.setAttribute("login", login);
		LoginDTO log = new LoginDTO();
		log.setId(id);
		log.setPass(pass);
		log.setLogin(login);
		System.out.println("id : "+id+", pw : "+pass+", login : "+login);
		response.setContentType("text/html;charset=utf-8");
	}
}
