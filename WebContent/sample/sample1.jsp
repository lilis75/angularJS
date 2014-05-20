<!DOCTYPE html>
<html>
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.12/angular.min.js"></script>
    <script src="http://gregpike.net/demos/angular-local-storage/angular-local-storage.js"></script>
    <link rel="stylesheet" href="http://angularjs.org/css/bootstrap.min.css">
    <link rel="stylesheet" href="http://angularjs.org/css/docs.css">
    <link rel="stylesheet" href="http://angularjs.org/css/font-awesome.css">
    <title>Todos</title>
    <style>
        .todo-true{
            text-decoration: line-through;
            color: grey;
        }
    </style>
</head>
<body ng-app="todos" ng-controller="TodosCtrl">

<h2>Todo</h2>
<div>
    <span>{{remaining()}} of {{todos.length}} remaining</span>
    [ <a ng-click="archive()">archive</a> ][ <a ng-click="save()">save</a> ]{{savedmsg}}
    <ul class="unstyled">
        <li ng-repeat="todo in todos">
            <input type="checkbox" ng-model="todo.done">
            <span class="todo-{{todo.done}}" ng-if="!todo.editable">{{todo.text}}</span>
            <span><input class="todo-{{todo.done}}" ng-if="todo.editable" ng-model="todo.text"></span>
            <span><input type="button" class="btn btn-primary" ng-click="edit(todo)"  value="E"> </span>
            <span><input type="button"  class="btn btn-primary" ng-click="delete($index)" value="D"> </span>
        </li>
    </ul>
    <form ng-submit="add()">
        <input type="text" ng-model="todoText"  size="30"
               placeholder="add new todo here">
        <input class="btn-primary" type="submit" value="add" >
    </form>
</div>
<script>
    var todos = angular.module("todos",['LocalStorageModule']);
    todos.controller("TodosCtrl",["$scope", "localStorageService",function($scope, localStorageService){
        var storageKey = "todoList";
        var todos = localStorageService.get(storageKey);
        if(todos){
            $scope.todos = todos;
        }else{
            $scope.todos = [
                {text:'learn angular', done:true},
                {text:'build an angular app', done:false}];
        }
        $scope.add = function(){
            $scope.todos.push({text:$scope.todoText, done:false});
            $scope.todoText = '';
        };
        $scope.remaining =function(){
            var count = 0;
            angular.forEach($scope.todos, function(todo) {
                count += todo.done ? 0 : 1;
            });
            return count;
        };
        $scope.archive = function() {
            var oldTodos = $scope.todos;
            $scope.todos = [];
            angular.forEach(oldTodos, function(todo) {
                if (!todo.done) $scope.todos.push(todo);
            });
        };
        $scope.edit = function(todo){
            todo.editable = !todo.editable
        };
        $scope.delete = function(idx){
            $scope.todos.splice(idx, 1);
        };
        $scope.save = function(idx){
            localStorageService.add(storageKey, $scope.todos);
            $scope.savedmsg = 'saved todos at ' + new Date().toLocaleString();
        };
    }
    ]);
</script>
</body>
</html>


