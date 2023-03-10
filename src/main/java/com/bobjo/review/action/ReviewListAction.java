package com.bobjo.review.action;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bobjo.basicform.action.Action;
import com.bobjo.basicform.action.ActionForward;
import com.bobjo.review.db.ReviewDAO;

public class ReviewListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println(" M : 리뷰 - ReviewList_execute 동작 ");
		
		String sort = request.getParameter("sort");
		if(sort == null) sort = "recent";
		ReviewDAO dao = new ReviewDAO();
		
		Map<Integer, Integer> map = dao.getReviewScore();
		int sum = 0;
		for(int i : map.keySet()) {
			sum += map.getOrDefault(i, 0);
		}
		double[] arr = new double[6];
		for(int i = 0; i < 6; i++) {
			arr[i] = map.getOrDefault(i, 0)/(double)sum;
		}
		
		
		request.setAttribute("ReviewList", dao.getReviewList(sort));
		request.setAttribute("pageCount", dao.getCountReview());
		request.setAttribute("scoreList", arr);
		
		ActionForward forward = new ActionForward();
		forward.setPath("./samples/review.jsp");
		forward.setRedirect(false);
		return forward;
	}

}
