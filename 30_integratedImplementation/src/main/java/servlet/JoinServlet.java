package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vo.MemberVO;

@WebServlet(
		urlPatterns = { "/join" }, 
		initParams = { 
				@WebInitParam(name = "encoding", value = "utf-8"), 
				@WebInitParam(name = "version", value = "9.0.55")
		})
public class JoinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	@Override
	public void init(ServletConfig config) throws ServletException {
		Enumeration<String> names = config.getInitParameterNames();
		while(names.hasMoreElements()) {
			String name = names.nextElement();
			System.out.println(name+" : "+config.getInitParameter(name));
		}
		super.init(config);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String encoding = getServletConfig().getInitParameter("encoding");
		System.out.println("doPost encoding : "+encoding);
		request.setCharacterEncoding(encoding);
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		String name = request.getParameter("name");
		String addr = request.getParameter("addr");
		String phone = request.getParameter("phone");
		
		MemberVO vo = new MemberVO(id,pass,name,addr,phone);
		System.out.println(vo);
		
		ServletContext application = getServletContext();
		System.out.println("contextPath : "+application.getContextPath());
		System.out.println("serverInfo : "+application.getServerInfo());
		String contextParam = application.getInitParameter("contextParam");
		System.out.println("contextValue : "+contextParam);
		
		List<MemberVO> memberList = (ArrayList<MemberVO>)application.getAttribute("memberList");
		if(memberList == null) {
			memberList = new ArrayList<>();
			application.setAttribute("memberList", memberList);
		}
		
		boolean isChecked = true;
		for(MemberVO m : memberList) {
			if(m.getId().equals(id)) {
				isChecked = false;
				break;
			}
		}
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print("<script>");
		if(isChecked) {
			// ?????? ????????? ?????????
			memberList.add(vo);
			System.out.println(memberList);
			out.print("alert('???????????? ??????');");
			out.print("location.href='login.jsp'");
		}else {
			// ?????? ???????????? ?????????
			out.print("alert('???????????? ?????? : ????????? ?????? ??????');");
			out.print("history.back();");
		}
		out.print("</script>");
	}

}
