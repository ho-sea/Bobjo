<%@page import="com.bobjo.member.db.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BOBJO</title>


     <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="./css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body class="bg-gradient-primary">

    <div class="container">

        <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <div class="row">
                 <!--    <div class="col-lg-5 d-none d-lg-block bg-register-image"></div> -->
                    <div class="col-lg-7">
                        <div class="p-5">
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4">회원 정보 수정</h1>
                            </div>
                            
                            <form action="./MemberUpdateProAction.me" method="post" name="fr" onsubmit="return sendSubmit();" class="user">
                                <div class="form-group">
                                    <input type="text" class="form-control form-control-user" name="m_id" value="${m_id }" readonly>
                                </div>
                                  
                                <div class="form-group">
                                    <input type="password" class="form-control form-control-user" name="pw" placeholder="현재 비밀번호" required="required">
                                </div>
                                
                                <div class="form-group">
                                    <input type="text" class="form-control form-control-user" name="m_name" value="${dto.m_name }"  readonly>
                                </div>
                                
                                <div class="form-group">
                                    <input type="text" class="form-control form-control-user" name="phone" value="${dto.phone }"
                                        placeholder="전화번호" maxlength="11">
                                </div>
                                
                                <div class="form-group">
                               <input type="text" class="form-control form-control-user" name="nickname" value="${dto.nickname }"
                                        placeholder="닉네임">
                                </div>
                                <div class="form-group">
                                    <input type="email" class="form-control form-control-user" name="email" value="${dto.email }"
                                        placeholder="이메일">
                                </div>
                                
                                <hr>
                                <input type="submit" value="수정하기" class="btn btn-primary btn-user btn-block">
                                    
                               
                                <a href="./MemberMypage.me" class="btn btn-primary btn-user btn-block">
                                    마이페이지
                                </a>     
                            </form>                
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
    
 
    
    
    

    <!-- Bootstrap core JavaScript-->
  <!--   <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script> -->

    <!-- Core plugin JavaScript-->
   <!--  <script src="vendor/jquery-easing/jquery.easing.min.js"></script> -->

    <!-- Custom scripts for all pages-->
   <!--  <script src="js/sb-admin-2.min.js"></script> -->
    
   
    
    
    

</body>

</html>