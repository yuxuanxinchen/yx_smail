

$(document).ready(function(){
	createCode();
});


var code ; //��ȫ�� ������֤��
/**
 * ������֤���¼�
 * @return
 */
function createCode()
{ 
	code = "";
	var codeLength = 4;//��֤��ĳ���
	var checkCode = document.getElementById("checkCode");
	var selectChar = new Array(0,1,2,3,4,5,6,7,8,9,'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z');// ���к�ѡ�����֤����ַ�����ȻҲ���������ĵ�

	for(var i = 0;i < codeLength; i++ )
	{
		var charIndex = Math.floor(Math.random()*36);
		code +=selectChar[charIndex];
	}
		if(checkCode)
		{
			checkCode.className="code";
			checkCode.innerHTML = code;
		}
}



//$(document).ready(function(){
//	createCode();
//	txtName();
//	txtEmail();
//	txtPwd();
//	txtPass();
//	txtCode();
//});


$(document).ready(function(){
	var q = document.getElementById("txtUserName");
	$("#UserName").focus(function(){
		q.innerHTML = "������4��20Ϊ�ַ�������ĸ����Ϊ���֣�";
	});
});

$(document).ready(function(){
	var q = document.getElementById("txtUserPwd");
	$("#UserPwd").focus(function(){
		q.innerHTML = "������6-16λ���ַ������ֻ���ţ�";
	});
});

$(document).ready(function(){
	var q = document.getElementById("txtUserEmail");
	$("#UserEmail").focus(function(){
		q.innerHTML = "�����������õ����䣬����Ϊ�ܱ����䣡";
	});
});


$(document).ready(function(){
	var q = document.getElementById("txtUserPass");
	$("#UserPass").focus(function(){
		q.innerHTML = "������6-16λ���ַ������ֻ���ţ�";
	});
});

$(document).ready(function(){
	var q = document.getElementById("txtCode");
	$("#inputCode").focus(function(){
		q.innerHTML = "��������֤�룡";
	});
});



/**
 * �û�����֤
 */
function txtName(){
	var regCode = /^[A-Z,a-z]+\w{3,19}$/;
	var q = document.getElementById("txtUserName");
	var name = document.getElementById("UserName").value;
		if(regCode.test(name) == false){
			q.innerHTML = "<p class='code1'>������4��20λ�ַ�����λ����Ϊ����!</p>";
			return false;
		}else{
			$.ajax({
				dataType: "text",
				   type: "get",
				   url: "ProvingDo",
				   data: "name="+name,
				   success: function(msg){
						if(msg.trim() == "true"){
						q.innerHTML = "<p class='code1'>���˺�������ʹ��!</p>";
						return false;
					}else{
						q.innerHTML = "<p class='code2'>ͨ��</p>";
						return true;
					}
				   }
				});
		}
}

/**
 * �û�������֤
 */
function txtEmail(){
		var regCode =  /^([a-zA-Z0-9]+.*[a-zA-Z0-9]*)+@{1}(163|126|sina|google|qq)\.com$/;
		var q = document.getElementById("txtUserEmail");
		var name = document.getElementById("UserEmail").value;
		if(regCode.test(name) == false){
			q.innerHTML = "<p class='code1'>��������ȷ�����䣡</p>";
			return false;
		}else{
			q.innerHTML = "<p class='code2'>ͨ��</p>";
			return true;
		}
}

/**
 * �û�������֤
 */
function txtPwd(){
		var regCode =  /^(\w|\W){6,16}$/;
		var q = document.getElementById("txtUserPwd");
		var name = document.getElementById("UserPwd").value;
		
		if(regCode.test(name) == false){
			q.innerHTML = "<p class='code1'>������6-16λ���ַ������ֻ���ţ�</p>";
			return false;
		}else{
			q.innerHTML = "<p class='code2'>ͨ��</p>";
			return true;
		}
}

/**
 * �û������ٴ���֤
 */
function txtPass(){
		var q = document.getElementById("txtUserPass");
		var pass = document.getElementById("UserPass").value;
		var pwd = document.getElementById("UserPwd").value;
		if(pass == "" || pass == null){
			q.innerHTML = "<p class='code1'>���ٴ�����6-16λ���룡</p>";
			return false;
		}else{
			if(pass == pwd){
				q.innerHTML = "<p class='code2'>ͨ��</p>";
				return true;
			}else{
				q.innerHTML = "<p class='code1'>�����������һ�£�</p>";
				return false;
			}
		}
}

/**
 * ��֤����֤�¼�
 */
function txtCode(){
	var q = document.getElementById("txtCode");
	var q1 = document.getElementById("inputCode").value;
		if(q1 != code){
			q.innerHTML = "<p class='code1'>��������ȷ����֤�룡</p>";
			return false;
		}else{
			q.innerHTML = "<p class='code2'>ͨ��</p>";
			return true;
		}
}

function xyj()
{
	var q = document.getElementById("txtCheck");
	var box = document.getElementById("check");
	if(box.checked == true){
		if(txtName() == false | txtEmail() == false | txtPwd() == false | txtPass() == false | txtCode() == false){
			return false;
		}else{
			return true;
		}
	}else{
		q.innerHTML = "<p class='code3'>����ϸ�Ķ��ṷЭ�飡</p>";
		return false;
	}
 }



/**
 * A��ǩ����ת�¼�
 */
$(function(){
	$("#qq").click(function(){
		//return false;
	});
});

