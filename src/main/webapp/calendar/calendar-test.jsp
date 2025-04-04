<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../assets/css/global.css">
<script src="https://cdn.jsdelivr.net/npm/fullcalendar@6.1.8/index.global.min.js"></script>
<link rel="stylesheet" href="../assets/css/calendar/calendar-test.css">
<script src="../assets/js/calendar/calendar-test.js"></script>
<meta charset="UTF-8">
<title>캘린더 테스트</title>
</head>
<body>
	<div class="container" style="width: 1400px; height: 800px;">
		<div class="calendar-upper">
			<div class="calendar-upper-left">
				<span class="today-span"></span>
			</div>
			<div class="calendar-upper-right">
				<div class="custom-select-wrapper">
					<!-- 클릭 시 드롭다운 열릴 라벨 -->
					<label id="custom-select-label">월간</label>
					
					<!-- 옵션 리스트 -->
					<div class="custom-select-options">
						<div class="calendar-option" data-value="dayGridMonth">월간</div>
						<div class="calendar-option" data-value="timeGridWeek">주간</div>
						<div class="calendar-option" data-value="timeGridDay">일간</div>
					</div>
					
					<!-- 숨겨진 실제 select (선택적 활용) -->
					<select id="hidden-select" style="display: none;">
						<option value="dayGridMonth">월간</option>
						<option value="timeGridWeek">주간</option>
						<option value="timeGridDay">일간</option>
					</select>
				</div>
			</div>
		</div>
		
		<!-- 캘린더 전체 wrapper -->
		<div class="calendar-wrapper">
			<!-- 좌측: FullCalendar 캘린더 -->
			<div id="calendar"></div>
			<!-- 우측: 사이드 일정 정보 입력창 -->
			<div class="calendar-detail-panel" style="display: flex; flex-direction: column; gap: 25px;">
				<div class="calendar-title">
					<div id="title-wrapper">
						<input type="text" id="title-input" name="calendarTitle" placeholder="제목" />
					</div>
				</div>
				<div class="calendar-date-set">
					<div class="calendar-section">
						<span>시작</span>
						<div style="display: flex; gap: 40px;">
							<input type="date" id="start-date">
				    		<input type="time" id="start-time">
			    		</div>
				  	</div>
				  	<div class="calendar-section">
					    <span>종료</span>
					    <div style="display: flex; gap: 40px;">
					    	<input type="date" id="end-date">
					    	<input type="time" id="end-time">
				    	</div>
				  	</div>
			  	</div>
			  	<div class="etc-set" style="border-top: 1px solid var(--gray2); padding-top: 20px; display: flex; flex-direction: column; gap: 20px;">
				  	<div class="calendar-section">
				    	<span>색</span>
					    <div class="color-select" id="colorSelectBox">
							<div class="color-selected">
								<span class="color-dot" style="background-color: #00c17b;"></span> 에메랄드 그린
							</div>
							<div class="color-options">
								<div data-color="#00c17b"><span class="color-dot" style="background-color: #00c17b;"></span> 에메랄드 그린</div>
								<div data-color="#3b82f6"><span class="color-dot" style="background-color: #3b82f6;"></span> 딥 스카이블루</div>
								<div data-color="#000000"><span class="color-dot" style="background-color: #000000;"></span> 미드나잇 블랙</div>
								<div data-color="#ff375f"><span class="color-dot" style="background-color: #ff375f;"></span> 애플 레드</div>
								<div data-color="#f39fb1"><span class="color-dot" style="background-color: #f39fb1;"></span> 프렌치 로즈</div>
								<div data-color="#a78bfa"><span class="color-dot" style="background-color: #a78bfa;"></span> 소프트 바이올렛</div>
								<div data-color="#06b6d4"><span class="color-dot" style="background-color: #06b6d4;"></span> 모던 사이언</div>
							</div>
							
							<!-- 서버에 전송할 hidden input -->
							<input type="hidden" name="color" id="colorSelectedValue" value="#00c17b">
						</div>
				  	</div>
				  	<div class="calendar-section" style="height: 250px;">
		    			<span>내용</span>
					    <textarea id="event-desc" rows="4" placeholder="일정 내용을 입력하세요"></textarea>
				  	</div>
			  		<div class="calendar-btns">
				    	<button class="cancel-btn">취소</button>
				    	<button class="save-btn">저장</button>
			  		</div>
		  		</div>
			</div>
		</div>
	</div>
</body>
</html>