<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
	<!--===============================================================================================-->	
		<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
	<!--===============================================================================================-->
		<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
	<!--===============================================================================================-->
		<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<!--===============================================================================================-->
		<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
	<!--===============================================================================================-->
		<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
	<!--===============================================================================================-->	
		<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
	<!--===============================================================================================-->
		<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
	<!--===============================================================================================-->
		<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
	<!--===============================================================================================-->	
		<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
	<!--===============================================================================================-->
		<link rel="stylesheet" type="text/css" href="css/util.css">
		<link rel="stylesheet" type="text/css" href="css/main.css">
	<!--===============================================================================================-->
		
		<script type="text/javascript">
			function checkForm() {
				if (!document.updateMember.pw.value) {
			 		alert("새 비밀번호를 입력하세요.");
					return false;
				}
				if (!document.updateMember.pw_confirm.value) {
					alert("새 비밀번호 재확인을 입력하세요.");
					return false;
				}
				if (document.updateMember.pw.value != document.updateMember.pw_confirm.value) {
					alert("비밀번호를 동일하게 입력하세요.");
					return false;
				}
			}
			// 회원 탈퇴
			function goCheckDelete() {
				window.open("checkDelete.jsp", "_blank", "width=300, height=160, resizable =no, scrollbars=no");
			}
		</script>



	<title>회원 정보 수정</title>
</head>

<body>
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-b-160 p-t-50">
				<form name="updateMember" action="processUpdateMember.jsp" method="post" onsubmit="return checkForm()" class="login100-form validate-form">
						<span class="login100-form-title p-b-43">
							회원 정보 수정
						</span>
						
						<div class="wrap-input100 rs1 validate-input" data-validate = "Username is required">
							<input class="input100" type="password" name="pw" >
							<span class="label-input100">새 비밀번호</span>
						</div>
						
						
						<div class="wrap-input100 rs2 validate-input" data-validate="Password is required">
							<input class="input100" type="password" name="pw_confirm">
							<span class="label-input100">새 비밀번호 재확인</span>
						</div>

						<div class="container-login100-form-btn">
							<input class="login100-form-btn" type="submit" value="수정">
						</div>
						
						<div class="text-center w-full p-t-23" style="color:white;">
							<a onclick="goCheckDelete()" class="txt1">
								회원 탈퇴
							</a>
						</div>
					</form>
				</div>
			</div>
		</div>
	
	

	
	
<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>