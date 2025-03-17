<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- login.jsp -->
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Personal Buddy 로그인</title>
    <link rel="stylesheet" href="../assets/css/login/login.css">
</head>
<body>
    <img src="../assets/images/login/logo-login.png" alt="Personal Buddy 로고" class="logo">
    <div class="login-container">
        <form action="login.jsp" method="POST">
            <div class="input-group">
                <label for="email">이메일</label>
                <div class="input-wrapper">
                    <input type="email" id="email" name="email" required>
                    <img src="../assets/images/login/login-input-cancel-icon.png" alt="입력 취소" class="clear-input" onclick="clearInput('email')">
                </div>
            </div>
            <div class="input-group">
                <label for="password">비밀번호</label>
                <div class="input-wrapper">
                    <input type="password" id="password" name="password" required>
                    <img src="../assets/images/login/login-input-cancel-icon.png" alt="입력 취소" class="clear-input" onclick="clearInput('password')">
                    <img src="../assets/images/login/see-password-icon-false.png" alt="비밀번호 보기" class="toggle-password" onclick="togglePassword()">
                </div>
            </div>
            <div class="remember-me">
                <img src="../assets/images/login/checkbox-icon-false.png" alt="로그인 상태 유지" class="checkbox-icon" onclick="toggleCheckbox(this)">
                로그인 상태 유지
            </div>
            <button type="submit" class="login-btn" disabled>로그인</button>
        </form>
        <div class="links">
            <a href="#">아이디 찾기</a> | <a href="#">비밀번호 찾기</a> | <a href="#">회원가입</a>
        </div>
    </div>

    <script>
    document.addEventListener("DOMContentLoaded", function () {
        const inputs = document.querySelectorAll(".input-group input");
        const loginButton = document.querySelector(".login-btn");

        function checkInputs() {
            let allFilled = true;
            inputs.forEach(input => {
                if (input.value.trim() === "") {
                    allFilled = false;
                    input.classList.remove("filled");
                } else {
                    input.classList.add("filled");
                }
            });

            if (allFilled) {
                loginButton.classList.add("active");
                loginButton.removeAttribute("disabled");
            } else {
                loginButton.classList.remove("active");
                loginButton.setAttribute("disabled", "true");
            }
        }

        inputs.forEach(input => {
            input.addEventListener("input", checkInputs);
        });

        checkInputs(); // 페이지 로드 시 실행
    });
    
    function togglePassword() {
        const passwordInput = document.getElementById("password");
        const toggleIcon = document.querySelector(".toggle-password");
        
        if (passwordInput.type === "password") {
            passwordInput.type = "text";
            toggleIcon.src = "../assets/images/login/see-password-icon-true.png";
        } else {
            passwordInput.type = "password";
            toggleIcon.src = "../assets/images/login/see-password-icon-false.png";
        }
    }
    
    function clearInput(inputId) {
        document.getElementById(inputId).value = "";
        document.getElementById(inputId).classList.remove("filled");
        
        document.querySelector(".login-btn").classList.remove("active");
        document.querySelector(".login-btn").setAttribute("disabled", "true");
        
        checkInputs();
    }
    
    function toggleCheckbox(icon) {
        if (icon.src.includes("checkbox-icon-false.png")) {
            icon.src = "../assets/images/login/checkbox-icon-true.png";
        } else {
            icon.src = "../assets/images/login/checkbox-icon-false.png";
        }
    }
	</script>
</body>
</html>
