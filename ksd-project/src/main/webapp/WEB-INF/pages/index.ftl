<!doctype html>
<html>
   <head>
      <meta charset="utf-8"/>
       <title></title>
       <style type="text/css"></style>
   </head>
   <body>
   
   <p>---------------------------------  </p>
     Hello World
     ${user}
    
      <#if user == "我们好像在哪儿见过">
      		   真的见过呀
      </#if>
   
    <!--对象获取值-->
    ${per.name}
    ${per.age}
    ${per.address}
   

    <#if per.age == 26>
     	我是25啦
     <#else>
	            我不是25
    </#if>
   
   <p>---------------------------------  </p>
   
   <#list lis as lists>
      ${lists}
   </#list>
     
   <p>---------------------------------  </p>
   
   <#list lis as lists>
     <#if lists == "001">
        <p>${lists}</p>
       <#else>
        ${lists}
     </#if>
   </#list>
   
   <p>---------------------------------  </p>
   
   ${users!"DEFAULT"}  
   <#if user??>   <!--如果不存在则忽略整个if语句-->
      Hellow
   </#if>  
   
   <p>---------------------------------  </p>
   
   ${10*10}   
    
   
   ${"Hello World"}    
   ${lis[0]} 
   
   <p>---------------------------------  </p>
   
   <#list ["1","2","3"]+["4","5","6"] as u>
      ${u}
   </#list>
   
   <!--定义常量     后面的会覆盖前面的，如果键一样-->
   <#assign ages={"Joe":23,"Fred":"wang"}+{"Joe":100,"Fred":"li","Ster":"SSSSS"} />
   
   ${ages.Joe}
   ${ages.Ster}
   
   <p>---------------------------------  </p>
   
   ${(12/2)?int}  <!--后面  ?int表示取整-->   
   ${1.1?int}   
   ${1.999?int}   
   ${(-12.3)?float}   
   
   
   <p>---------------------------------  </p>
   
   <#if per.age<30>
        < 30
   </#if>
   
   
   ${"shel"?cap_first}
   ${"SHEEL"?lower_case}
   ${"sehhle"?upper_case}
   ${"   sdf   "?trim}${"   sdf   "}
   ${lis?size}
   ${"htmlserjioejriojf;djf isdjfie"?html}  
 
   <p>---------------------------------  </p>

   <#macro greet person color="GREEN">
       <h1 style="color:${color}">Hello ${person}!</h1>
   </#macro>

   <@greet person="小张" ></@greet>
   <@greet person="小张" color="red"></@greet>

   
	<#macro border>
		<table border=4 cellspacing=0 cellpadding=4><tr><td>
		<#nested>
		</td></tr></table>
		<#nested>
	</#macro>
	  
	 <@border>
		 The
		  bordered
		   text
	  </@border>
	   
   <p>---------------------------------  </p>

     <#macro bord>
        <#nested>
     </#macro>
     
     <#macro b_b>
		<p>Hello LI IS RED</p>
     </#macro>
     
     
     <@bord>
        <ul>
           <li>1</li>
           <li>2</li>
           <li>3</li>
           <li><@b_b></@b_b></li>
        </ul>
     </@bord>
	   
	   
	   
	 <#macro repeat count>
	    <#local y = "test">
	    <#list 1..count as x>
	        ${(count/x)}:<#nested>
	    </#list>
	 </#macro>
	  
	 <@repeat count=23>
	    YER
	 </@repeat>
	   
	
	<#assign y="Y">
	   
   <p>---------------------------------  </p>
	 
    <!--日期处理-->	 
	${per.date?date} ${per.date?time}
   
	   <#macro do_thrice>
			<#nested 1>
			<#nested 2>
			<#nested 3>
	   </#macro>
		<@do_thrice ; x> <#-- 用户自定义指令 使用";"代替"as" -->
		${x} Anything.
	</@do_thrice>
   
	   
   <p>---------------------------------  </p>
	  <#macro repeat count>
			<#list 1..count as x>
				<#nested x, x/2, x==count>
			</#list>
			</#macro>
	 <@repeat count=4 ; c, halfc, last>
			${c}. ${halfc}<#if last> Last!</#if>
	</@repeat>
   
   
   <#macro res count>
      <#list 1..count as x>
         <#nested x,x/2,x==count>
      </#list>
   </#macro>
   
   <@res count=4 ; c, b, l>
      ${c} ${b}  <#if l>LIst!</#if>
   </@res>

   <@res count=10 ; a, b>
      ${a}  ${b}
   </@res>

   
   <p>------------------------------------------</p>
    ${user}
    <#assign user="JONS">
    ${user}    <!--使用模版变量-->
    ${.globals.user}  <!--使用全局变量-->
   
   <p>------------------------------------------</p>
   
   <#import "constant.ftl" as my>
   <@my.copyright date="1992-12-12" />
   ${my.mail}
   
   
   
   <#compress>
       <#assign users = [
       {"name":"Joe","hidden":false},
       {"name":"JoP","hidden":true},
       {"name":"JO","hidden":false}
       ]>
       
       List of users:
       <#list users as use>
           <#if !use.hidden>
              ${use.name}
           </#if>
       </#list>
       
   </#compress>
   
   
   
   
   
   
   
   <#include "foot.ftl"/>
   
   <script type="text/javascript">
       window.onload = function(){
          al();
         function al(){
           alert(1)
         }
      }
   
   </script>
   </body>
</html>