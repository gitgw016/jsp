package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vo.MemberVO;

@WebServlet("/join")
public class JoinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		String name = request.getParameter("name");
		String addr = request.getParameter("addr");
		String phone = request.getParameter("phone");
		MemberVO joinMember = new MemberVO(id,pass,name,addr,phone);
		System.out.println(joinMember);
		System.out.println("joinMember : "+joinMember);
		ServletContext application = this.getServletContext();
		List<MemberVO> member = (List<MemberVO>)application.getAttribute("member");
		if(member == null) {
			member = new ArrayList<MemberVO>();
			application.setAttribute("member", joinMember);
		}
		response.setContentType("text/html;charset=utf-8");
		boolean add = false;
		PrintWriter pw = response.getWriter();
			for(int i=0; i<member.size(); i++) {
				if(member.get(i).getId() == id){
					add = true;
					continue;
			}
				if(add = true) {
				pw.print("<script>");
				pw.print("alert('이미 존재하는 사용자 아이디 입니다.');");
				pw.print("history.back();");
				pw.print("</script>");
			}else{
				member.add(joinMember);
				application.setAttribute("member", member);
				pw.print("<script>");
				pw.print("alert('가입 성공');");
				pw.print("location.href=\'main.jsp?page=login\';");
				pw.print("</script>");
		}
	}
	}
}
