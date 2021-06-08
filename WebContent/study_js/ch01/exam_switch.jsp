<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/commonUIglobal.jsp"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
	<script type="text/javascript">
      function test(){
       	let site = prompt ('NAVER , DAUM , Google 중에서 자주 이용하는 사이트는?' , "");
        let url;
        	switch (site) {
		case "NAVER": url("www.naver.com");
		break;
		case "DAUM": url("www.daum.net");
		break;
		case "Google": url("www.google.com");
		break;
/* 		case "ZUM": url("zum.com");
		break;
		case "NATE": url("www.nate.com");
		break;
		case "YAHOO!": url("www.yahoo.com");
		break;
		case "BING": url("www.bing.com");
		break; */
	        if(url){
	        	location.herf="http://"+url;
	    }
	 /* 	case 'NAVER':document.write("NAVER");
		case 'DAUM':document.write("DAUM");
		case 'Google':document.write("Google");
		case 'ZUM':document.write("ZUM");
		case 'NATE ON':document.write("NATE ON");
		case 'YAHOO':document.write("YAHOO");
		case 'BING':document.write("BING");
	         */
  	
</script>
</head>
<body>ㅇ
<script type="text/javascript">test();
</script>
<br>
자주 이용하는 사이트는?
</body>

</html>