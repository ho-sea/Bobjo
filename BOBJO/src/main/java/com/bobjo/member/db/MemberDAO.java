package com.bobjo.member.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.bobjo.utils.db.ConnectionManager;

public class MemberDAO {
	private Connection con = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	private String sql = "";
	
	
	// 회원가입 - insertMember(dto)
	public void insertMember(MemberDTO dto) {
		try {
			// 1,2 디비연결
			con = ConnectionManager.getConnection();
			// 3 sql 작성 & pstmt 객체
			sql = "insert into bobjo_member(m_id,pw,m_name,phone,nickname,email,alcohol_level) "
					+ " values(?,?,?,?,?,?,?)";
			pstmt = con.prepareStatement(sql);
			
			// ???
			pstmt.setString(1, dto.getM_id());
			pstmt.setString(2, dto.getPw());
			pstmt.setString(3, dto.getM_name());
			pstmt.setString(4, dto.getPhone());
			pstmt.setString(5, dto.getNickname());
			pstmt.setString(6, dto.getEmail());
			pstmt.setString(7, dto.getAlcohol_level());
			
			// 4 sql 실행		
			pstmt.executeUpdate();
			
			System.out.println(" DAO : 회원가입 성공! ");
			
		} catch (Exception e) {
			System.out.println(" DAO : 회원가입 실패! ");
			e.printStackTrace();
		} finally {
			ConnectionManager.closeConnection(rs, pstmt, con);
		}		
	}
	// 회원가입 - insertMember(dto)
	
	//로그인 - loginMember(dto)
	public int loginMember(MemberDTO dto) {
		int result = -1;
		
		try {
			// 1.2. 디비연결
			con = ConnectionManager.getConnection();
			
			// 3. sql 작성 & pstmt 객체
			sql = "select pw from bobjo_member where m_id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, dto.getM_id());
			
			// 4. sql 실행
			ResultSet rs = pstmt.executeQuery();
			
			// 5. 데이터처리
			if(rs.next()) {
				if(dto.getPw().equals(rs.getString("pw"))) {
					//본인		
					result = 1;
				}else {
					// 비밀번호 오류
					result = 0;
				}			
			}else {
				// 비회원(아이디 정보없음)
				result = -1;
			}	
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			ConnectionManager.closeConnection(rs, pstmt, con);
		}
		return result;
	}
	//로그인 - loginMember(dto)
	
	
	
	

}
