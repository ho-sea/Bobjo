package com.bobjo.review.action;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bobjo.basicform.controller.BasicFrontController;

@WebServlet("*.rv")
public class ReviewFrontController extends BasicFrontController {

	@Override
	protected void setActionForward(String command, HttpServletRequest request, HttpServletResponse response) {
		
		// 리뷰 메인
		if(command.equals("/ReviewList.rv")) {
			System.out.println(" C : 리뷰 - ReviewList 호출 ");
			action = new ReviewListAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		// 리뷰 등록
		else if(command.equals("/ReviewReg.rv")) {
			System.out.println(" C : 리뷰 - ReviewReg 호출 ");
		}
		// 리뷰 수정
		else if(command.equals("/ReviewMod")) {
			System.out.println(" C : 리뷰 - ReviewMod 호출 ");
		}
	}

}
