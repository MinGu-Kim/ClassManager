<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String cp = request.getContextPath();
%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=0">
<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link
	href="<%=cp%>/resources/assets/bootstrap/css/bootstrap_join.min.css"
	rel="stylesheet">
<title>ClassManager</title>

</head>
<body>
	<div id="wrapper2" align="center" style="width: 700px;">
		<fieldset>
			<legend>회원가입</legend>
			<div align="center">
				<form name="uploadForm" method="post" action=""
					enctype="multipart/form-data">
					<div class="form-group">
						<div class="row">
							<div class="profile-header-container">
								<div class="profile-header-img">
									<img class="img-circle" id=photo
										src="" />
									<!-- badge -->
									<div class="rank-label-container">
										<span class="label label-default rank-label">profile</span>
									</div>
									<div align="right" >
										<input type="file" name="imgFile" id="profilepic">
									</div>
								</div>
							</div>
						</div>
					</div>

				</form>
				
				
				<form class="form-horizontal" method="post" action="join" name="frm">

					<div class="form-group">
						<label class="col-lg-2 control-label" for="inputId">아이디 </label>
						<div class="col-lg-10">
							<div style="float: left; width: 100%;">
								<input class="form-control" id="inputId" type="text"
									name="inputId" placeholder="4글자 이상 입력해주세요" /><input type="hidden"
									name="reid" />
							</div>
							<div style="float: right; width: 0%;">
								<input type="button" class="btn btn-primary btn-xs"
									onclick="idCheck();" value="중복확인"></input>
							</div>

						</div>
					</div>
					<div class="form-group">
						<label class="col-lg-2 control-label" for="inputPassword">비밀번호</label>
						<div class="col-lg-10">
							<input class="form-control" id="inputPassword" type="password"
								name="pwd" placeholder="연속된 숫자나 쉬">
						</div>
					</div>

					<div class="form-group">
						<label class="col-lg-2 control-label" for="inputPassword2"  ">비번확인</label>
						<div class="col-lg-10">
							<input class="form-control" id="inputPassword2" type="password"
								name="pwd_check" placeholder="비밀번호 확인">
						</div>
					</div>

					<div class="form-group">
						<label class="col-lg-2 control-label" for="inputName">이름</label>
						<div class="col-lg-10">
							<input class="form-control" id="inputName" type="text"
								name="inputName" placeholder="이름">
						</div>
					</div>

					<div class="form-group">
						<label class="col-lg-2 control-label" for="inputPhoneNum">전화번호</label>
						<div class="col-lg-10">
							<input class="form-control" id="inputPhoneNum" type="text"
								name="phone" placeholder="전화번호">
						</div>
					</div>

					<div class="form-group">
						<label class="col-lg-2 control-label" for="inputAddress">주소</label>
						<div class="col-lg-10">
							<input class="form-control" id="inputAddress" type="text"
								name="addr" placeholder="주소">
						</div>
					</div>

					<div class="form-group">
						<label class="col-lg-2 control-label" for="inputEmail">이메일</label>
						<div class="col-lg-10">
							<input class="form-control" id="email" type="text" name="email"
								placeholder="abc@abcd.com">
						</div>
					</div>


					<div class="form-group">
						<label class="col-lg-2 control-label">구분</label>
						<div class="col-lg-10">
							<div class="radio" align="left">
								<label> <input type="radio" name="test" value="1"
									onclick="div_OnOff(this.value,'con1', 'con2');"> 선생님
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
									type="radio" name="test" value="2"
									onclick="div_OnOff(this.value,'con2', 'con1');"
									checked="checked"> 학생
								</label>
							</div>
						</div>
					</div>

					<div id="con1" style="display: none">

						<div class="form-group">
							<label class="col-lg-2 control-label" for="inputTeacherNum">교번</label>
							<div class="col-lg-10">
								<div style="float: left; width: 100%;">
									<input class="form-control" id="inputTeacherNum" type="text"
										value="0" name="teacherno" placeholder="교번" /><input
										type="hidden" name="retNum" value="0" />
								</div>
								<div>
									<div style="float: right; width: 0%;">
										<input class="btn btn-primary btn-xs" type="button"
											value="교번확인" onclick="teacherCheck();" />
									</div>
								</div>
							</div>
						</div>


						<div class="form-group">
							<label class="col-lg-2 control-label" for="selectGrade">담당학년</label>
							<div class="col-lg-10">
								<select class="form-control" id="selectGrade" name="selectGrade">
									<option value="1학년">1학년</option>
									<option value="2학년">2학년</option>
									<option value="3학년">3학년</option>
								</select>
							</div>
						</div>

						<div class="form-group">
							<label class="col-lg-2 control-label" for="selectClass">담당
								반</label>
							<div class="col-lg-10">
								<select class="form-control" id="selectClass" name="selectClass">
									<option value="1반">1반</option>
									<option value="2반">2반</option>
									<option value="3반">3반</option>
									<option value="4반">4반</option>
									<option value="5반">5반</option>
									<option value="6반">6반</option>
									<option value="7반">7반</option>
									<option value="8반">8반</option>
									<option value="9반">9반</option>
									<option value="10반">10반</option>
								</select>
							</div>
						</div>

					</div>

					<div id="con2" style="display:">

						<div class="form-group">
							<label class="col-lg-2 control-label" for="selectGrade">학년</label>
							<div class="col-lg-10">
								<select class="form-control" id="selectGrade" name="stdtGrade">
									<option value="1학년">1학년</option>
									<option value="2학년">2학년</option>
									<option value="3학년">3학년</option>
								</select>
							</div>
						</div>

						<div class="form-group">
							<label class="col-lg-2 control-label" for="selectClass">반</label>
							<div class="col-lg-10">
								<select class="form-control" id="selectClass" name="stdtClass">
									<option value="1반">1반</option>
									<option value="2반">2반</option>
									<option value="3반">3반</option>
									<option value="4반">4반</option>
									<option value="5반">5반</option>
									<option value="6반">6반</option>
									<option value="7반">7반</option>
									<option value="8반">8반</option>
									<option value="9반">9반</option>
									<option value="10반">10반</option>
								</select>
							</div>
						</div>

						<div class="form-group">
							<label class="col-lg-2 control-label" for="inputStudentNum">번호</label>
							<div class="col-lg-10">
								<input class="form-control" id="inputStudentNum" type="text"
									name="studentno" placeholder="번호">
							</div>
						</div>

					</div>
					
					<input type="hidden" name="fileNmae" id="fileName" value="default.PNG">
		
					
					<div class="form-group">
						<div class="col-lg-10 col-lg-offset-2">
							<input class="btn btn-primary" type="submit"
								onclick="return joinCheck();" value="가입">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input  class="btn btn-primary" type="reset" value="초기화"></input>
						</div>
					</div>
				</form>

			</div>

			<script
				src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
			<script type="text/javascript" src="<%=cp%>/resources/script/join.js"></script>
			<script src="<%=cp%>/resources/assets/bootstrap/js/bootstrap.min.js"></script>
			
				<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
			<script src="<%=cp%>/resources/script/jquery.fileupload.js"></script>

			<script type="text/javascript">
				$(document).ready(function() {
					$('#profilepic').fileupload({
						url : 'uploadFile',
						replaceFileInput: false,
						dataType : 'json',
						add : function(e, data) {
							var uploadFile = data.files[0];
							var isValid = true;
							if (!(/png|jpe?g|gif/i).test(uploadFile.name)) {
								alert('png, jpg, gif 만 가능합니다');
								isValid = false;
							} else if (uploadFile.size > 5000000) { // 5mb
								alert('파일 용량은 5메가를 초과할 수 없습니다.');
								isValid = false;
							}
							if (isValid) {
								data.submit();
							}
						},
						progressall: function(e,data) {
			                var progress = parseInt(data.loaded / data.total * 100, 10);
			                $('#progress .bar').css(
			                    'width',
			                    progress + '%'
			                );
			            },
						done : function(e, data) {
							var filename = decodeURIComponent(data.result.filename);
							$('#photo').attr('src', "/classmanager/resources/assets/img/"+data.result.filename );
							$('#fileName').attr('value', data.result.filename);
							alert(filename);

						},
						fail : function(e, data, result) {
							// data.errorThrown
							// data.textStatus;
							// data.jqXHR;
							alert(result);
							alert('서버와 통신 중 문제가 발생했습니다');
							foo = data;
						}
					});
				});
				</script>
			
		</fieldset>
	</div>
</body>
</html>