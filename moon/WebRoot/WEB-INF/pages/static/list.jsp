<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@include file="/WEB-INF/common/taglib.jsp"%>
<%@ taglib uri="http://content" prefix="con"%>
<!DOCTYPE HTML>
<html>
  <head>
    <title>后台管理</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<%@include file="/WEB-INF/common/common.jsp" %>
	<link rel="stylesheet" href="${basePath}resources/css/main.css"/>
	<link rel="stylesheet" href="${basePath}resources/sg/css/animate.css"/>
	<script type="text/javascript" src="${basePath}resources/sg/tz_page.js"></script>
	<style type="text/css">
	   body{	-webkit-user-select: text;  -moz-user-select: text;    -ms-user-select: text;      user-select: text;}
	   #y_c{width:740px;margin:18px auto;color:#141414;display:none;border:1px solid #999;padding:30px;box-shadow: 3px 4px 5px #666;}
	   #y_c .y_title{width:100%;height:100px;background:#999}
	   #y_c .y_title h1{font-size:28px;text-align:center;line-height:100px}
	   #y_c .y_content{width:800px;border:1px solid #999;border-radius:5px}
	   #y_c .y_content p{font-size:14px;padding:10px}
	   #y_c .y_content h2{font-size:16px;font-weight:600;display:block; border-radius:5px;text-align:center;line-height:40px;height:40px;width:100%}
	   #yx_control{width:800px;height:167px;border-top:1px solid green;border-right:1px solid green;border-left:1px solid green;margin:60px auto;    box-shadow: -3px 4px 18px #555}
	   #yx_control ul li{padding-top:9px;padding-bottom:10px;width:100%;height:33px;border-bottom:1px solid #DA542E;margin-top:3px}
	   #yx_control ul li span{margin-left:30px;width:50px;height:30px;display:inline-block;font-size:14px;text-align:center;line-height:30px}
	   #yx_control ul li input{width: 100px; height: 30px;border: 0px; background: rgba(255,255,255,.1);border: 1px solid #28B779;font-weight:600;  border-radius: 2px;color: #FF00AF; font-size: 14px;font-family: 微软雅黑;}
	   #yx_control ul li input:hover{border:1px solid #141414;-webkit-transition: all 0.5s;-webkit-transition: all 0.5s;  }
	   #yx_control ul .y_cbts .s_title{box-shadow: 3px 4px 5px #999;width:80px;height:30px;line-height:30px;font-size:14px;text-align:center;display:inline-block;border:1px solid green;border-radius:4px;float:left}
	   #yx_control ul .y_cbts span{margin-left:32px;width:43px;float:left;height:30px;display:inline-block;font-size:14px;text-align:center;line-height:30px}
	   #yx_control ul li #url{width:600px;}
	
	  #y_edit{display:none;width:800px;height:400px;border:1px solid #141414;margin:0 auto;    box-shadow: 2px 5px 22px rebeccapurple;border-radius:5px}
	
	  #y_edit ul li span{vertical-align: top;margin-left:30px;width:50px;height:30px;display:inline-block;font-size:14px;text-align:center;line-height:30px}
	  #y_edit ul li #y_e_title{width: 600px; height: 30px;border: 0px; background: rgba(255,255,255,.1);border: 1px solid #28B779;font-weight:600;  border-radius: 2px;color: #FF00AF; font-size: 14px;font-family: 微软雅黑;}
	  #y_edit ul li{padding-top:6px;padding-bottom:10px;width:100%;height:33px;border-bottom:1px solid #DA542E;margin-top:3px}
	  #y_edit ul li #y_e_net {width: 600px; height: 30px;border: 0px; background: rgba(255,255,255,.1);border: 1px solid #28B779;font-weight:600;  border-radius: 2px;color: #FF00AF; font-size: 14px;font-family: 微软雅黑;}
	  #tm{width:790px;height:30px;margin-top:-2px;color:#DA542E;}
	  #h2s{width:100%;height:50px;display:block;text-align:center;line-height:50px;font-size:28px;margin-bottom:20px}
	
	  #yx_title{display:none;width: 800px; height: 100px; border: 1px solid #1F262D; margin: 20px auto; box-shadow: 3px 4px 5px #141414; font-size: 20px;line-height: 100px; text-align: center}
	  #yx_link{display:none;width: 800px; height: 600px;overflow:auto; border: 1px solid #1F262D; margin: 20px auto; box-shadow: 3px 4px 5px #141414; }
	 #yx_link p{    display: block; width: 193px;float: left;padding-left: 55px; margin: 3px;}
	 #yx_link p:hover a{}
	
	 #_____{width: 740px;overflow:auto;display:none; height: 500px; border: 1px solid #1F262D; margin: 20px auto; box-shadow: 3px 4px 5px #141414; font-size: 14px;padding:30px}
	 #y_img{width: 740px;overflow:auto; display:none; border: 1px solid #1F262D; margin: 20px auto; box-shadow: 3px 4px 5px #141414; font-size: 14px;padding:30px}
	 #y_img img{    width: 200px;height: 200px;margin:15px}
	 #__btn_down_img{display:inline-block;width:200px;height:200px;margin:15px;font-size:30px;line-height:200px;text-align:center;background:#28B779;color:#fff;}
	
	 .sub_title{font-size:12px; display: inline-block;float: left;}
	#y_ct_db{    width: 200px;  height: 60px; display: block;background: #DA542E;  font-size: 30px; color: #fff;text-align: center;line-height: 60px;margin-left: 70%;}
	</style>

	
 </head>
 <body>
 
 
 

 
 
 
	<div class="wrap">
		<%@ include file="/WEB-INF/common/left.jsp" %>
		<div class="content">
			  <%@ include file="/WEB-INF/common/header.jsp" %>
			<div class="channel"> 首页 > 蜘蛛抓取</div>
			<div class="cnt">
				<div class="tabwrap">
					
					<!--表格-->
					<table class="tztab">
						<caption>
							蜘蛛页面 
							<div class="fr sbtn">
								<input type="text" class="fl" id="keywords" placeholder="搜索的关键字..."/><a href="javascript:void(0)" onclick="tzAdmin.search(this);" class="fl"><i class="fa fa-search "></i></a>
							</div>
							
						</caption>
					</table>
					<span class="sub_title">(本人平时喜欢阅读文章，spider以优秀文章网为主,抓取内容:http://www.xiuqq.com/wenzhang/suibi/18933.html)</span>
					<span class="sub_title"></span>
					
					
					
					
					<con:contentDatials>   </con:contentDatials>
					
					
					
					
					
					
<!-- 					 ${con } -->
					 
					 
					 
					 
					 
					 
					 
					 
					 
					 
					 
					 
					 
					 
					 
					 
					 
					 
					 
					 
					 
					 
					 
					 
					 
					<div id="yx_control">
					    <ul>
					    <li>
								    <span>URL：</span>
								    <input id="url" type="text" name="label" placeholder="链接地址..." value="http://www.xiuqq.com/wenzhang/suibi/18933.html"></input>
								  
							</li>		
							<li>
								    <span>标签：</span>
								    <input type="text" name="label" placeholder="元素标签名" id="y_label"></input>
								    <span>ID：</span>
								    <input type="text" name="label" placeholder="元素ID" id="y_id"></input>
								    <span>class：</span>
								    <input type="text" name="label" placeholder="元素class" id="y_class"></input>
								    <span>属性：</span>
								    <input type="text" name="label" placeholder="元素属性" id="y_property"></input>
							</li>		
							<li class="y_cbts">
								    <span>标题：</span><a href="javascript:void(0)" class="s_title" onclick="yxSpider.title(this)">获取标题</a>
								    <span>内容：</span><a href="javascript:void(0)" class="s_title" onclick="yxSpider.htmlContent(this)">获取内容</a>
								    <span>链接：</span><a href="javascript:void(0)" class="s_title" onclick="yxSpider.Link(this)">A链接</a>
								    <span>图片：</span><a href="javascript:void(0)" class="s_title" onclick="yxSpider.imgs(this)">获取图片</a>
								    <span>html：</span><a href="javascript:void(0)" onclick="yxSpider.htmlSource(this)" class="s_title">获取源代码</a>
							</li>					    
					    </ul>
					</div>
					
					<div id="y_edit">
					    <ul>
					       <li>
					           <span>标题</span>
					           <input type="text" id="y_e_title"/>
					       </li>
					        <li>
					           <span>网址</span>
					           <input type="text" id="y_e_net"/>
					       </li>
					       <li style="border:0px">
					           <span>源代码</span>
					           <textarea cols="93" rows="10" id="htmlSource"></textarea>
					       </li>
					    </ul>
					</div>
					
					<div id="y_c">
					    <div class="y_title">
					       <h1>这是标题</h1>
					    </div>
					    <div class="y_content"></div>
					</div>
					
					<div id="yx_title"></div>
					<div id="yx_link"></div>
					<div id="_____"></div>
					<div id="y_img">
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<script type="text/javascript">
     
	     var yxSpider = {
	       _url:"${basePath}admin/spider/",
	       y_id:null,
	       y_class:null,
	       y_label:null,
	       y_property:null,
	      htmlSource:function(obj){
	      var url =  $("#url").val();
	        var mark = this.verify();
	        if(isNotEmpty(mark)){
	          var arr =  mark.split("#");
                yxSpider.condition(arr);	          
	        }
	         if(isNotEmpty(url)){
	        	 yxAjax.r({
		           url:this._url+"html",
		           callback:function(data){
		              loading("获取成功啦...",3);
		              var title = $(data).find("h1").text();
			           if(isEmpty(title)){
			             title = $(data).find("h2").text();
			           }
			           
			             $("#y_edit").addClass("animated flipInY").show().siblings("#y_c").hide();
			             $("#y_e_title").empty();
			             $("#y_e_title").val(title);
			             $("#htmlSource").empty();
			             $("#htmlSource").val(data)
  					  $("#y_e_net").empty();
  					   $("#y_e_net").val(yxSpider.urlsp())
		           }
		         },{"url":url});
	          }
	      },
	      htmlContent:function(obj){
	         var html = $("#htmlSource").val();
	        if(isNotEmpty(html)){
	        $("#y_edit").addClass("animated fadeOutLeft").hide().removeClass("animated fadeOutLeft").siblings("#y_c").hide();
	         var content = $(html).find(".content").html();
	         var thtml = $(html).find("h2").text();
	         thtml  = "<h2 id='h2s'>"+thtml+"</h2>";
	     	 var ctime = $(html).find(".info").html();
	     	 ctime = "<div id='tm'>"+ctime+"</div>";
	     	 ctime+=content;
	     	 thtml+=ctime;
	     	 thtml+="<a href='javascript:void(0)' id='y_ct_db' onclick='yxSpider.db(this)'>一键存库</a>"
	     	 $("#y_c").empty();
	         $("#y_c").addClass("animated rotateInDownLeft").show(500).html(thtml);
	        }
	      },
	      verify:function(){
	         this.y_id = $("#y_id").val();
	         this.y_class = $("#y_class").val();
	         this.y_property = $("#y_property").val();
	         this.y_label = $("#y_label").val();
	         if(isNotEmpty(this.y_label)){
	             return this.y_label+"#label";
	         }if(isNotEmpty(this.y_id)){
	             return this.y_id+"#id";
	         } if(isNotEmpty(this.y_class)){
	             return this.y_class+"#eClass";
	         } if(isNotEmpty(this.y_property)){
	             return this.y_property+"#property";
	         }
	      },
	      title:function(obj){
	         var html = $("#htmlSource").val();
	        if(isNotEmpty(html)){
	         $("#y_edit").addClass("animated fadeOutLeft").hide().removeClass("animated fadeOutLeft").siblings("#y_c").hide();
	         var h1 = $(html).find("h1").text();
	         $("#yx_title").addClass("animated fadeInDownBig").show().html(h1)
	         }
	      },
	      Link:function(obj){
	       $("#y_edit").addClass("animated fadeOutLeft").hide().removeClass("animated fadeOutLeft").siblings("#y_c").hide();
	       var url =  $("#url").val();
	       var a_html = "";
		       if(isNotEmpty(url)){
		        yxAjax.r({
		          url:this._url+"parseAlink",
		          callback:function(data){
		            data = data.substring(1,data.length-1);
		            var arr = data.split(",")
		            for(var i = 0 ;i < arr.length;i++){
		              var src = $(arr[i]).attr("href");
		              arr[i] = $(arr[i]).attr("href",yxSpider.urlsp()+src)
		              console.log($(arr[i]).attr("href")+"-------------"+$(arr[i]).text())
		                a_html+= "<p><a href='"+$(arr[i]).attr("href")+"'>"+$(arr[i]).text()+"</a></p>";
		            }
		            $("#yx_link").addClass("animated fadeInDownBig").show().html(a_html)
		          }
		        },{"url":url,"charset":"GBK"});
		      }
	       },
	       urlsp:function(){
	       var url =  $("#url").val();
	       	 var iurl = url.split("/");
  					  var _iurl =""  ;
  					  for(var i = 0 ;i < iurl.length;i++){
  					    if(i<3){
  					       if(i==1){
  					          _iurl+="//";
  					       }
  					    _iurl+=iurl[i];
  					    }
  					  }
  				return _iurl;
	       },
	       condition:function(arr){
	       var url =  $("#url").val();
	       var param = {"url":url};
	       var pop = arr[1];
	       param[pop]  = arr[0];
	         yxAjax.r({
	           url:this._url+"propertyQuery",
	           callback:function(data){
	              $("#y_edit").addClass("animated fadeOutLeft").hide().removeClass("animated fadeOutLeft").siblings("#y_c").hide();
	              $("#_____").empty();
	              $("#_____").addClass("animated bounceInRight").show().text(data);
	           }
	         },param);
	       },
	       imgs:function(obj){
	        $("#y_edit").addClass("animated fadeOutLeft").hide().removeClass("animated fadeOutLeft").siblings("#y_c").hide();
	         var url =  $("#url").val();
	         var param = {"url":url};
	          yxAjax.r({
	           url:this._url+"imgs",
	           callback:function(data){
	            if(isNotEmpty(data)){
	            var d_i = "<a href='javascript:void(0)' onclick='yxSpider.imgDown(this)' id='__btn_down_img'>一键下载</a>";
	            data+=d_i;
	              $("#y_img").empty();
	              $("#y_img").addClass("animated swing").show().append(data);
	           }
	           }
	         },param);
	       },
	       imgDown:function(obj){
	        var url =  $("#url").val();
	          yxAjax.r({
	           url:this._url+"imgAllDown",
	           callback:function(data){
	             alert(data)
	           }
	          });
	       },
	       db:function(obj){
	         yxAjax.r({
	           url:this._url+"articleDb",
	           callback:function(data){
	              if(data=="SUCCESS"){
	              loading("数据保存成功！")
	              }
	           }
	         });
	       }
	     }
	
	</script>
 </body>
</html>