<!doctype html>
<html>
   <head>
      <meta charset="utf-8"/>
       <title></title>
       <style type="text/css"></style>
       <script type="text/javascript" src="http://www.kaoshidian.com/zhuanti/common/jquery-1.8.3.min.js"></script>
       
   </head>
   <body>
  		<table>
  		    <thead>
  		       <th>address</th>
  		       <th>birthday</th>
  		       <th>createDate</th>
  		       <th>district</th>
  		       <th>email</th>
  		       <th>gender</th>
  		       <th>name</th>
  		    </thead>
  		    <tbody>
  		    <#list agent as a>
  		       <tr>
  		           <td><#if a.address ??>${a.address}<#else>-----</#if></td>
  		           <td><#if a.birthday ??>${a.birthday?datetime}<#else>-----</#if></td>
  		           <td><#if a.createDate ??>${a.createDate?datetime}<#else>-----</#if></td>
  		           <td><#if a.district ??>${a.district}<#else>-----</#if></td>
  		           <td><#if a.email ??>${a.email}<#else>-----</#if></td>
  		           <td><#if a.gender ??>${a.gender}<#else>-----</#if></td>
  		           <td><#if a.name ??>${a.name}<#else>-----</#if></td>
  		       </tr>
	  		</#list>
  		    
  		    </tbody>
  		    <tfoot></tfoot>
  		</table>
  		
  		<a href="javascript:void(0)" size = ${agent?size}>总共${agent?size}条</a>
  		
  		
  		<script type="text/javascript">
             $(function(){
				 
				/*下一页*/     


             });
  		
  		
  		</script>
   </body>
</html>