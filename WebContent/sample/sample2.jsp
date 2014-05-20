<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!doctype html>
<html ng-app="myApp">
<%@ include file="/include/includeJS.jsp" %>
<head>
<script type="text/javascript">
var myApp = angular.module("myApp", []);

myApp.controller("StatusCtrl", ["$scope", "$http", function ($scope, $http){
	$scope.status = {};
	$scope.status.type = "";
    $http({
    	method: 'GET',
    	url: './message.jsp'
    })
    .success(function(data, status, headers, config) {
    	$scope.status.type = "Success !!";
    	$scope.statusInfo = data;
    })
    .error(function(data, status, headers, config) {
    	$scope.status.type = "Error !!";
    });
}]);
</script>
</head>
<body>
	<div>
		<label>Name:</label> <input type="text" ng-model="yourName"
			placeholder="Enter a name here">
		<hr>
		<h1>Hello {{yourName}}!</h1>
	</div>
	<div ng-controller="StatusCtrl">
	   <span>Status : {{ status.type }}</span>
	   {{ data }}
	   <ul ng-repeat="data in statusInfo">
	       <li>{{ data.retry }}</li>
	       <li>{{ data.target }}</li>
	       <li>{{ data.data }}</li>
	   </ul>
	</div>
<script>
myApp.controller('EmailsCtrl', ['$scope', function ($scope) {

	  // 이메일 객체를 생성
	  $scope.emails = {};

	  // 서버에서 데이터를 받아온 것처럼 꾸며보자.
	  // 그냥 객체의 배열이다.
	  $scope.emails.messages = [{
	        "from": "Steve Jobs",
	        "subject": "I think I'm holding my phone wrong :/",
	        "sent": "2013-10-01T08:05:59Z"
	    },{
	        "from": "Ellie Goulding",
	        "subject": "I've got Starry Eyes, lulz",
	        "sent": "2013-09-21T19:45:00Z"
	    },{
	        "from": "Michael Stipe",
	        "subject": "Everybody hurts, sometimes.",
	        "sent": "2013-09-12T11:38:30Z"
	    },{
	        "from": "Jeremy Clarkson",
	        "subject": "Think I've found the best car... In the world",
	        "sent": "2013-09-03T13:15:11Z"
	    }];

	}]);
</script>
	<div ng-controller="EmailsCtrl">
		<ul>
			<li ng-repeat="message in emails.messages">
				<p>From: {{ message.from }}</p>
				<p>Subject: {{ message.subject }}</p>
				<p>{{ message.sent | date:'MMM d, y h:mm:ss a' }}</p>
			</li>
		</ul>
	</div>
</body>
</html>
