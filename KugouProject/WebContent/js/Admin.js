  var code ; //��ȫ�� ������֤��
/**
 * ������֤���¼�
 * @return
 */
function createCode()
	{ 
		code = "";
	var codeLength = 4;//��֤��ĳ���
	var checkCode = document.getElementById("spanCode");
	var selectChar = new Array(0,1,2,3,4,5,6,7,8,9,'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z');// ���к�ѡ�����֤����ַ�����ȻҲ���������ĵ�

	for(var i = 0;i < codeLength; i++ )
	{
		var charIndex = Math.floor(Math.random()*36);
		code +=selectChar[charIndex];
	}
		if(checkCode)
		{
			checkCode.className="code3";
			checkCode.innerHTML = code;
		}
}


$(function(){
	 createCode();
});


$(function(){
	$("#back").click(function(){
		
	});
});
