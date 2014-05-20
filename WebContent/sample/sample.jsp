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
��ġ
��ġ�� �����ϰ� Google���� �����ϴ� CDN�� �̿��ؼ� �մϴ�.
jQuery 1.x ������ ���� �ε��ϴ� ������, �ͽ��÷η� (IE)���� ȣȯ ���� �����Դϴ�.
AngularJS ��ü�� �̹� jqLite��� �ϴ� jQuery ��Ÿ���� DOM ���� API�� ������
�������� IE���������� ȣȯ�Ϸ��� jQuery 1.x������ �����ؾ� �մϴ�.
jQuery�� ���� �����Ұ�� ��ü ������ jqLite��� jQuery�� ����մϴ�.
����� �����帮��, AngularJS 1.x ������ ���� �����ϴ� ���� ���������� IE�� 8�Դϴ�.
�ƿ� AngularJS 2.x �����뿡���� ����� �������� ũ��, ���ĸ�, ���̾����� ���� ������(?) �������� �߽����� ������ �����̶�� �մϴ�.
https://angularjs.org/

http://blog.naver.com/jjoommnn?Redirect=Log&logNo=130182960996


������.
http://soomong.net/blog/2014/01/20/translation-ultimate-guide-to-learning-angularjs-in-one-day/

Eclipse-Angular JS plugin
https://github.com/angelozerr/angularjs-eclipse/wiki/Getting-Started
		</pre>
	</div>
</body>
</html>
