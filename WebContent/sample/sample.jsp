<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!doctype html>
<html ng-app>
<%@ include file="/include/includeJS.jsp" %>
<head>
<script>
function todoCtrl($scope) {
	$scope.yourName = "Angular JS APP..";
}
</script>
</head>
<body ng-controller="todoCtrl">
	<div>
		<label>Name:</label> <input type="text" ng-model="yourName"
			placeholder="Enter a name here">
		<hr>
		<h1>Hello {{yourName}}!</h1>

		<pre>
설치
설치는 간단하게 Google에서 제공하는 CDN을 이용해서 합니다.
jQuery 1.x 버전을 먼저 로드하는 이유는, 익스플로러 (IE)와의 호환 문제 때문입니다.
AngularJS 자체에 이미 jqLite라고 하는 jQuery 스타일의 DOM 조작 API가 있지만
구버전의 IE브라우저까지 호환하려면 jQuery 1.x버전을 포함해야 합니다.
jQuery가 먼저 존재할경우 자체 내장한 jqLite대신 jQuery를 사용합니다.
참고로 말씀드리면, AngularJS 1.x 버전의 공식 지원하는 가장 하위버전의 IE는 8입니다.
아예 AngularJS 2.x 버전대에서는 모바일 브라우저나 크롬, 사파리, 파이어폭스 같은 개념찬(?) 브라우저들 중심으로 지원할 예정이라고 합니다.
https://angularjs.org/

http://blog.naver.com/jjoommnn?Redirect=Log&logNo=130182960996


유익함.
http://soomong.net/blog/2014/01/20/translation-ultimate-guide-to-learning-angularjs-in-one-day/

Eclipse-Angular JS plugin
https://github.com/angelozerr/angularjs-eclipse/wiki/Getting-Started
		</pre>
	</div>
</body>
</html>
