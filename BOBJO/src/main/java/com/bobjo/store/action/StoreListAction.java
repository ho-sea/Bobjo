package com.bobjo.store.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bobjo.basicform.action.Action;
import com.bobjo.basicform.action.ActionForward;
import com.bobjo.store.db.StoreDAO;

public class StoreListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String[] classPath = this.getClass().getName().split("\\.");
		System.out.println(" M :  "+classPath[classPath.length-1]+"_execute() 호출! ");
		
		int pageNum = 1;
		int pageSize = 12;
		String srch_location = request.getParameter("srch_location") == null ? "" : request.getParameter("srch_location");
		String srch_category = request.getParameter("srch_category") == null ? "" : request.getParameter("srch_category");
		String srch_text = request.getParameter("srch_text") == null ? "" : request.getParameter("srch_text");
		
		StoreDAO dao = new StoreDAO();
		request.setAttribute("list",  dao.getStoreList(pageNum, pageSize, srch_location, srch_category, srch_text));
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("totalPage", dao.getStoreListSize(srch_location, srch_category, srch_text));
		request.setAttribute("srch_location", srch_location);
		request.setAttribute("srch_category", srch_category);
		request.setAttribute("srch_text", srch_text);
		
		ActionForward forward = new ActionForward();
		forward.setPath("./store/storeList.jsp");
		forward.setRedirect(false);
		return forward;
	}

}
