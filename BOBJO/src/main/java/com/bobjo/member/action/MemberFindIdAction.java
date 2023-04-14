package com.bobjo.member.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bobjo.basicform.action.Action;
import com.bobjo.basicform.action.ActionForward;
import com.bobjo.member.db.MemberDAO;
import com.bobjo.member.db.MemberDTO;


public class MemberFindIdAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String[] classPath = this.getClass().getName().split("\\.");
		System.out.println(" M :  "+classPath[classPath.length-1]+"_execute() 호출! ");
		
		   // 전달정보 저장
		  String m_name = request.getParameter("m_name");
		  String phone = request.getParameter("phone");
		  System.out.println(m_name);
		  
		  MemberDAO dao = new MemberDAO();
	      MemberDTO dto = dao.getFindID(m_name, phone);
		  
		  request.setAttribute("dto", dto);
		  
		// 페이지 이동
		 response.setContentType("text/html; charset=UTF-8");
		 PrintWriter out = response.getWriter();
					
		 ActionForward forward = new ActionForward();
					
		 if(dto != null) {	
			forward.setPath("member/findidreMember.jsp");
			forward.setRedirect(false);
			return forward;
				
	   }else {
			out.print("<script>");
			out.print(" alert('일치하는 정보가 없습니다.'); ");
			out.print(" location.href='./MemberJoin.me'; ");
			out.print("</script>");
			out.close();
         	return null;
			}
     }
	
}
