<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.button{
background-color: #fff;


}
</style>

</head>
<body>
	<h1>여름방학 특강신청</h1>
	<form action="summurStudyServlet" method="get">

		<fieldset>
			<label>아이디<input type="text" name="id"></label> <label>비밀번호<input
				type="password" name="passwd"></label> <input type="submit"
				value="로그인">
		</fieldset>
		<fieldset>
			<legend>수강과목</legend>
			<label>영어회화 (초급)</label> <input type="text" value="오전 9:00~11:00"
				name="test" readonly>
		</fieldset>
		<fieldset>
			<legend>신청자</legend>
			<label>이름</label> <input type="text" size="10" maxlength="11"
				name="name" autofocus required> <br> <label>학번</label>
			<input type="text" placeholder="학번입력" name="stdno"> <br>

			<label>학과</label> <select name=select>
				<option value="archi">건축공학과</option>
				<option value="mechanic">기계공학과</option>
				<option value="indust">산업공학과</option>
				<option value="elec">전기전자공학과</option>
				<option value="computer">컴퓨터공학과</option>
				<option value="chemical">화학공학과</option>
			</select> 
			
			<br> <label> 첨부파일 <input type="file" name="file"></label> 
			<br> <label> 첨부파일 <input type="color" name="color"	value="#00ff00"></label>

		</fieldset>
		<fieldset>
			<legend>수강과목을 선택 하세요</legend>
			<input type="text" name="interest" list="choices">
			<datalist id="choices">
				<option value="gramar" label="문법"></option>
				<option value="voca" label="어휘"></option>
				<option value="speaking" label="회화"></option>
				<option value="listening" label="리스닝"></option>
				<option value="news" label="뉴스청취"></option>
			</datalist>
		</fieldset>

		<fieldset>
			<legend>이지스퍼블리싱</legend>
			<textarea name="intro" rows="5" cols="60">HMM가즈아!!!!!!!!!!!</textarea>
		</fieldset>
		<fieldset>
			<legend>진행상태</legend>
			<label>10초 남음</label>
			<progress value="50" max="60" name="1"></progress>
		</fieldset>
		<fieldset>
			<legend>전체크기중 차지하는 크기</legend>
			<label>점유율0.8</label>
			<meter value="0.8" name="2"></meter><br>
			<label>사용량 64%</label>
			<meter max="100" value="64" name="3"></meter><br>
			<label>트래픽 초과</label>
			<meter value="9216" min="1024" max="10240" low="2048" high="8192" name="4"></meter><br>
			<label>적절한 트래픽</label>
			<meter value="0.5" optimum="0.8" name="5"></meter><br>
		</fieldset>
		<button type="submit" class="button"><img src="images/tick.png" >전송하기</button>


	</form>
</body>
</html>