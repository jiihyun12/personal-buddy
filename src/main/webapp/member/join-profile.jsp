<%@page import="com.app.vo.MemberImgVO"%>
<%@page import="com.app.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="../assets/css/global.css">
	<link rel="stylesheet" href="../assets/css/member/join-profile.css">
	<title>프로필 작성</title>
</head>
<body>
	<%
		MemberVO newMember = (MemberVO)session.getAttribute("newMember");
		MemberImgVO newMemberImage = (MemberImgVO)session.getAttribute("newMemberImage");

	    if (newMember == null || newMemberImage == null) {
	    	
   	%>
		<script>
       		alert("세션정보가 만료되어 로그인 페이지로 이동합니다.");
	    	// 세션 정보가 없으면 로그인 페이지로 리디렉션
       		location.href = "<%= request.getContextPath() %>/member/login.member";
    	</script>
	<%        
       	return;
   		}
	%>
	
	<img src="../assets/images/member/logo-login.png" alt="Personal Buddy 로고" class="logo">

    <div class="join-container">
    	<form action="join-ok.member" method="post" enctype="multipart/form-data">
        	<!-- 첫 번째 입력 박스 -->
        	<div class="input-group">
        		<!-- id(email 주소) -->
	            <div class="wrapper">
	            	<div id="image-wrapper">
		            	<label id="image-plus-button">
	            	 		<input type="file" id="imageInput" name="newMemberImageInput"style="display: none;"/>
	            	 	</label>
	            	 	<div id="image-minus-button" style="display: none"></div>
	                	<img src="../assets/images/member/profile-default.png" id="profile-image">
	                </div>
	            </div>
	            
	            <!-- 이름 -->
	            <div class="wrapper">
	            	<div class="input-title">
                		<span>닉네임</span>
                		<span id="nickname-fail-message" style="display: none;"></span>
                	</div>
               		<div class="input-wrapper" id="nickname-wrapper">
	                	<input type="text" id="nickname" placeholder="닉네임을 입력해주세요. (최대 14자)"  name= "memberNickName" maxlength="10" required>
		                <span id="nickname-input-length"></span>
	            	</div>
               	</div>
               	
               	<!-- 이름 -->
	            <div class="wrapper">
                	<span>상태 메세지</span>
               		<div class="input-wrapper" id="comment-wrapper">
	                	<input type="text" id="comment" placeholder="메세지를 입력해주세요. (최대 20자)"  name="memberComment" maxlength="20" />
		                <span id="comment-input-length"></span>
	            	</div>
               	</div>
	        </div>
	
	        <!-- 가입 버튼 -->
	        <button class="signup-btn">가입하기</button>
        </form>
    </div>
    
</body>
<script src="../assets/js/member/join-profile.js">
</script>
</html>