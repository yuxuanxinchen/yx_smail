/**自定义Ajax*/ 
var yxAjax = {
            r:function(options,params){
               var opts = $.extend({},{
                 type:"post",
                 path:'http://localhost:8080/moon/',
                 url:"",
                 model:"",
                 method:"",
                 before:function(){loading("请稍候，数据装载中....")},
                 callback:function(){},
                 error:function(){},
                 logout:function(){},
               },options);
               if(!opts.url){
            	   opts.url=opts.path+opts.model+"/"+opts.method;
               }
               $.ajax({
                  type:opts.type,
                  url:opts.url,
                  beforeSend:opts.before,
                  error:opts.error,
//                  contentType:"application/x-www-form-urlencoded;charset=utf-8", 
                  data:params,
                  success:function(data){
                	  loading("remove")
                     if(data=="logout"){
                          //登录弹窗     huozhe   直接跳转
                    	 if(opts.logout)opts.logout();
                         window.location.href=opts.path+"userlogin"
                     }else if(data=="nopermission"){
                    	  loading("非常抱歉，没有权限！",4)
                     }else{
                       opts.callback(data);
                     }
                  }
               });
            }
        }
	

 /**格式化日期*/
 function yxSimpleDate(date,pattern){
     var YYYY = date.getFullYear();
     var MM = date.getMonth()+1;
     var dd = date.getDate();
     var HH =  date.getHours();
     var mm = date.getMinutes();
     var ss = date.getSeconds();
     var milliseconds = date.getMilliseconds(); //微妙级别
     var time = date.getTime();  //毫秒数
     var month_day = date.getUTCDate(); //月中的今天
     var week_day = date.getUTCDay(); //星期
     var year_moth  = date.getUTCMonth();
     
     if(MM<10){ MM+"0"+MM;  }
     if(dd<10){ dd="0"+dd;}
     if(HH<10){ HH="0"+HH; }
     if(mm<10){ mm="0"+mm; }
     if(ss<10){ ss="0"+ss;}
     var yMd = YYYY+"-"+MM+"-"+dd;
     var yMdHms = YYYY+"-"+MM+"-"+dd+" "+HH+":"+mm+":"+ss;
     var yMdHm = YYYY+"-"+MM+"-"+dd+" "+HH+":"+mm;
     var Hms = HH+":"+mm+":"+ss;
     var Md = MM+"-"+dd;
     var hm = HH+":"+mm;
     if(pattern=="Y-M-d"){ return yMd;}
     if(pattern=="Y-M-d H:m:s"){ return yMdHms}
     if(pattern=="Y"){ return YYYY;}
     if(pattern=="M"){return MM;}
     if(pattern=="d"){return dd;}
     if(pattern=="Y"){return YYYY}
     if(pattern=="H"){return HH}
     if(pattern=="m"){return mm}
     if(pattern=="s"){return ss}
     if(pattern=="Y-M-d H:m"){return yMdHm;}
     if(pattern=="H:m:s"){return Hms}
     if(pattern=="M-d"){return Md}
     if(pattern=="H-m"){return hm}
     if(pattern=="stime"){return time}
 }

	