package fileupload;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Collection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.servlet.annotation.MultipartConfig;

@MultipartConfig(
	maxFileSize = 1024L,
	maxRequestSize = -1,
	fileSizeThreshold = -1)
public class UploadServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -4781884281655321130L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		PrintWriter writer = response.getWriter();
		writer.println("<html><body>");
		
		String contentType = request.getContentType();	// 요청 컨텐츠 타입이 multipart/form-data 인지 확인
		if(contentType != null && contentType.toLowerCase().startsWith("multipart/")) {
			printPartInfo(request, writer);
		} else {
			writer.println("multipart가 아님!!");
		}
		writer.println("</body></html>");
	}

	private void printPartInfo(HttpServletRequest request, PrintWriter writer) throws IOException, ServletException {
		Collection<Part> parts = request.getParts();	// javax.servlet의 Part 클래스 import
														// HttpServletRequest의 getParts() 메소드를 이용하여 Part 목록을 구함
		for(Part part : parts) {
			
			String name = part.getName();
			writer.println("<br> name = " + name);
			// Part의 getName() 메소드로 이름 (<input> 태그의 name)을 구함
			
			String contentType = part.getContentType();
			writer.println("<br> contentType = " + contentType);
			// Part의 컨텐츠 타입을 구하고 출력함
			
			if(part.getHeader("Content-Disposition").contains("filename=")) {
				// Part의 Content-Disposition 헤더가 "filename="을 포함하고 있으면 파일이 있는 것이기 때문에 업로드한 파일 데이터를 처리함
				
				Long size = part.getSize();
				writer.println("<br> size = " + size);
				// Part의 getSize() 메소드로 업로드한 파일의 크기 구함
				
				String fileName = part.getSubmittedFileName();
				writer.println("<br> fileName = " + fileName);
				// Part의 getSubmittedFileName() 메소드로 전송한 파일의 이름을 구함 (서블릿 3.1버전부터 제공)
				
				if(size > 0) {
					part.write("C:\\Temp\\" + fileName);
					part.delete();
				}
				// 업로드한 파일이 존재한다면 업로드한 데이터를 지정한 경로의 fileName에 쓴다
				// 그리고 임시로 저장한 파일을 삭제함
				
			} else {
				String value = request.getParameter(name);
				writer.println("<br> value = " + value);
			}
			// else면 (Content-Disposition 헤더가 "filename="을 포함하고 있지 않으면)
			// 값이 파라미터로 넘어가있기 때문에 이 파라미터를 읽어옴
			
			writer.println("<hr>");
		}
		
	}
	
}
