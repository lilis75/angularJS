<%-- MIME 타임 설정 --%>
<%@ page language="java" contentType="text/event-stream" pageEncoding="UTF-8"%>
<%-- 재시도 간격 : 2sec --%>
[{
    "retry": 2000,
<%
String[] symbols = new String[] {"YHOO", "GOOG", "MSFT"};
for (String symbol : symbols) {
	int delta = (int) (Math.random() * 10);
	// 차이가 7 이하라면 보냄
	if(delta<7) {
		// 50%의 확률로 음수갑으로 변환
		if(System.currentTimeMillis() % 2 == 0)
			delta = -delta;
%>
	"target": "<%= symbol %>",
	"data": <%= delta %>
}]
<%
        break;
	}
}
%>