<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	StringBuilder path = new StringBuilder(request.getContextPath());
	path.append("/");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 목록[WebContent]</title>
<!-- jEasyUI 시작 -->
<link rel="stylesheet" type="text/css" href="<%=path.toString() %>themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="<%=path.toString() %>themes/icon.css"> 
<!-- jEasyUI JS 시작 -->
<script type="text/javascript" src="<%=path.toString() %>js/jquery.min.js"></script>
<script type="text/javascript" src="<%=path.toString() %>js/jquery.easyui.min.js"></script>   
<script>
  function search(){
    console.log("조회 호출");
    $('#dg_board').datagrid({
        url:'jsonGetBoardList.sp4'
    });    
  }
  function ins(){
    console.log("입력창 호출");
   $('#dg_ins').textbox({
	 
	})
</script>
</head>
<body>
<script type="text/javascript">
  $(document).ready(function(){
     $('#dg_board').datagrid({
        url:'#tb_board2'
    });    
  }
</script>
<table id="dg_board" class="easyui-datagrid" data-options="title:'게시판',toolbar:'#tb_board2'" style="width:500px;height:350px">
    <thead>
        <tr>
            <th data-options="field:'BM_NO'">글번호</th>
            <th data-options="field:'BM_TITLE'">제목</th>
            <th data-options="field:'BM_DATE'">작성일</th>
            <th data-options="field:'BS_FILE'">첨부파일</th>
            <th data-options="field:'BM_HIT'">조회수</th>
        </tr>
    </thead>
</table>
    <div id="tb_board2" style="padding:2px 5px;">
        <a href="javascript:search()" class="easyui-linkbutton" iconCls="icon-search" plain="true">조회</a>
        <a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true">입력</a>
        <a href="#" class="easyui-linkbutton" iconCls="icon-edit" plain="true">수정</a>
        <a href="#" class="easyui-linkbutton" iconCls="icon-cancel" plain="true">삭제</a>
    </div>
    <!--==============[[글쓰기 화면 START]]===============  -->
 <div style="margin:20px 0;"></div>
    <div class="easyui-panel" title="Login to system" style="width:100%;max-width:400px;padding:30px 60px;">
        <div style="margin-bottom:10px">
            <input class="easyui-textbox" style="width:100%;height:40px;padding:12px" data-options="prompt:'Username',iconCls:'icon-man',iconWidth:38">
        </div>
        <div style="margin-bottom:20px">
            <input class="easyui-textbox" type="password" style="width:100%;height:40px;padding:12px" data-options="prompt:'Password',iconCls:'icon-lock',iconWidth:38">
        </div>
              <div>
            <a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-ok'" style="padding:5px 0px;width:100%;">
                <span style="font-size:14px;">수정</span>
            </a>
        </div>
    <!--==============[[글쓰기 화면 EXIT]]===============  -->   
</body>
</html>
<!--         <tr>
            <td>000</td><td>이름1</td><td>1234</td>
        </tr>
        <tr>
            <td>111</td><td>이름2</td><td>5678</td>
        </tr> -->
