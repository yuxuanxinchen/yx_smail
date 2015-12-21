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
                  data:params,
                  success:function(data){
                	  loading("remove")
                     if(data=="logout"){
                          //登录弹窗     huozhe   直接跳转
                    	 if(opts.logout)opts.logout();
                         window.location.href=opts.path+"userlogin"
                     }else{
                       opts.callback(data);
                     }
                  }
               });
            }
        }
	

	