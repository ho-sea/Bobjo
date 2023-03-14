<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<style type="text/css">

  body{
    background-color:#FAFAFA;
    margin: 0px;
    color: #262626;
    box-sizing: border-box;
}

a{
    text-decoration: none;
    color:#262626;
}

.login_wrapper{
    position:absolute;
    display: flex;
    flex-direction: column;
    align-items: center;
    width:350px;
    height:380px;
    top:50%;
    left:50%;
    margin: -175px 0px 0px -190px;
    background-color:white;
    border: 1px solid #DBDBDB;
}

.login_logo{
    margin :30px 0 30px 0;
    color:#262626;
    font-family: 'Lobster', cursive;
    font-size: 40px;
    font-weight: 100px;
}

.login_form{
    display:flex;
    flex-direction: column;
    width:280px;
    margin-top:10px;
}

.login_text{
    width:100%;
    height:40px;
    margin: 3px 0 3px 0 ;
    padding: 0 10px 0 10px;
    background-color:#FAFAFA;
    border: 1px solid #DBDBDB;
    border-radius: 3px;
}

.login_text:focus{
    outline: 1px solid #a8a8a8;
}

.login_text::placeholder{
    color:#8E8E8E;
}

.login_text::value{
    color:#262626;
}

.login_btn{
    width:100%;
    height:33px;
    margin: 10px 0 5px 0;
    color:white;
    background-color: #C0DFFD;
    border-radius: 5px;
    border-style: none;
    font-size: 15px;
    font-weight: bold;
    cursor: pointer;
}

.login_bottom{
    margin-top: 20px;
    color:#01376A;
    font-size: 13px;
}
  


</style>

 
</head>
<body>

     <article>
        <div class = "login_wrapper">
            <div class="login_logo">login</div>
            <form action="./MemberLoginAction.me" method="post" class="login_form">
                <input id="LOGIN_ID" class = "login_text" type="text" name="m_id" placeholder="���̵�">
                <input  id="LOGIN_PW" class = "login_text" type="password" name="pw" placeholder="��й�ȣ">
                <input id="LOGIN_BTN" class = "login_btn" type="submit" value="�α���">
                
   <a href="javascript:kakaoLogin();"><img src="./img/kakao_login.png" alt="īī������ �α���" style="height: 60px;"/></a>

    <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
    <script>
        window.Kakao.init('d48f63d9da5135c15efac2ae7eb8b7e4');

        function kakaoLogin() {
            window.Kakao.Auth.login({
                scope: 'profile_nickname, account_email', //�����׸� �������� �ִ� �������� ��ȣ ���̺��� Ȱ��ȭ�� ID���� �ֽ��ϴ�.
                success: function(response) {
                    console.log(response) // �α��� �����ϸ� �޾ƿ��� ������
                    window.Kakao.API.request({ // ����� ���� �������� 
                        url: '/v2/user/me',
                        success: (res) => {
                            const kakao_account = res.kakao_account;
                            console.log(kakao_account)
                        }
                    });
                    // window.location.href='/ex/kakao_login.html' //�����̷�Ʈ �Ǵ� �ڵ�
                },
                fail: function(error) {
                    console.log(error);
                }
            });
        }
    </script> 
                             
            </form>
            <a class = "login_bottom" href="" >��й�ȣ�� �����̳���?</a>
        </div>
    </article>

 
 
 



</body>
</html>