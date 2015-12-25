<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

   <!-- 引入jDate -->
  <script type="text/javascript" src="dwr/engine.js"></script>
  <script type="text/javascript" src="dwr/interface/JDate.js"></script>
  <script type="text/javascript" src="dwr/interface/DWR1TEST.js"></script>
     <script type="text/javascript">
     function init(){
//      JDate.getYear(load);
//      jDate.getMonth(load2);
     DWR1TEST.getString({
       callback:function(data){
       alert(data)}
     });
     
     
     DWR1TEST.getNames({
      callback:function(data){
       alert(data)
      }
     });
     
     
     DWR1TEST.getPersion({
        callback:function(data){
           for(var i=0;i<data.length;i++){
             alert(data[i].age+"---"+data[i].name);
           }
        }
     });
     
     }
//      function loads(data){
//      alert(data)
//      }
     
//      function load(data){
//         alert(data+1990+"年");
//         alert(data)
//      }
     
     
   </script>
  
</head>
<body onload="init()">
     
    Hello World

</body>
</html>