package com.bobjo.review.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.bobjo.utils.db.ConnectionManager;

public class ReviewDAO {

	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	String sql = "";
	
	// 전체 리뷰 목록
	public List<ReviewDTO> getReviewList(String sort){
		List<ReviewDTO> list = new ArrayList<>();
		ReviewDTO dto;
		
		try {
			conn = ConnectionManager.getConnection();
			sql = "SELECT * FROM BOBJO_REVIEW ";
			if(sort.equals("high")) {
				sql = sql + "ORDER BY SCORE DESC";
			}
			else if(sort.equals("low")) {
				sql = sql + "ORDER BY SCORE";
			}
			else if(sort.equals("recent")) {
				sql = sql + "ORDER BY REG_DATE DESC";
			}
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				dto = new ReviewDTO();
				
				dto.setReview_no(rs.getInt("review_no"));
				dto.setM_id(rs.getString("m_id"));
				dto.setStore_no(rs.getInt("store_no"));
				dto.setContent(rs.getString("content"));
				dto.setReg_date(rs.getDate("reg_date"));
				dto.setScore(rs.getFloat("score"));
				dto.setReview_img(rs.getString("review_img"));
				
				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ConnectionManager.closeConnection(rs, pstmt, conn);
		}
		
		return list;
	}
	// 전체 리뷰 목록
	
	// 리뷰 개수
	public int getCountReview() {
		int count = 0;
		
		try {
			conn = ConnectionManager.getConnection();
			sql = "SELECT COUNT(*) FROM BOBJO_REVIEW";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if(rs.next()) count = rs.getInt(1);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ConnectionManager.closeConnection(rs, pstmt, conn);
		}
		
		return count;
	}
	// 리뷰 개수
	
	// 점수
	public Map<Integer, Integer> getReviewScore() {
		Map<Integer, Integer> map = new HashMap<>();
		int key;
		
		try {
			conn = ConnectionManager.getConnection();
			sql = "SELECT SCORE FROM BOBJO_REVIEW";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				key = (int) rs.getFloat(1);
				map.put(key, map.getOrDefault(key, 0) + 1);
			}
			System.out.println("map : " + map);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ConnectionManager.closeConnection(rs, pstmt, conn);
		}
		
		return map;
	}
	// 점수
}
