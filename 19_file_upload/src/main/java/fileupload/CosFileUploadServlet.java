package fileupload;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("*.cos")
public class CosFileUploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String UPLOAD_DIRECTORY = "upload"+File.separator+"cos";
	private static final int MAX_POST_SIZE = 1024*1024*50;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		InputStream is = request.getInputStream();
		int readByte = 0;
		while((readByte = is.read()) != -1) {
			System.out.print((char)readByte);
		}
		*/
		
		request.setCharacterEncoding("utf-8");
		String test = request.getParameter("test");
		System.out.println("test : "+test);
		// 프로젝트 기준으로 지정된 폴더의 실제 위치(경로)를 반환
		String realPath = request.getServletContext().getRealPath(UPLOAD_DIRECTORY);
		System.out.println("realPath : "+realPath);
		File file = new File(realPath);
		if(!file.exists()) {
			file.mkdirs();
			System.out.println("디렉토리 생성 완료");
		}
												// 요청객체,업로드-파일저장경로,업로드 크기제한,인코딩,중복 파일 이름 설정
		MultipartRequest multi = new MultipartRequest(request,realPath,MAX_POST_SIZE,"utf-8",new DefaultFileRenamePolicy());
		
		test = multi.getParameter("test");
		System.out.println("multi test : "+test);
		
		Enumeration<?> fileNames = multi.getFileNames();
		while(fileNames.hasMoreElements()) {
			// form tag의 name값
			String fileName = (String)fileNames.nextElement();
			System.out.println("name : "+fileName);
			// 해당되는 name값으로 업로드된 파일 이름
			String uploadFileName = multi.getFilesystemName(fileName);
			// 원본 파일 이름
			String originalFileName = multi.getOriginalFileName(fileName);
			request.setAttribute("request", "file upload success");
			request.setAttribute("original", originalFileName);
			request.setAttribute("upload", uploadFileName);
		}
		RequestDispatcher rd = request.getRequestDispatcher("result.jsp");
		rd.forward(request, response);
	}

}
