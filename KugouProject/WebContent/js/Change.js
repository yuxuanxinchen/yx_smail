/**
*�Զ��л�����ͼƬ
*/
var min = 0;
var max = 5;
function adAutoChange() {
	 if (min == max) {
		 min = 0;
	 } else {
		 min++;
	 }
	 adChange();
}
/**
*�ֶ��л�ͼƬ
*/
function adChange() {
	 $("#banner a:eq(" + min + ")").show().siblings("a").hide();
	 $("#banner #slide span:eq(" + min + ")").css("background","red").siblings().css("background","#999");
}

//#banner���¼�����
$(function () {
	 //��ʾ��һ��ͼƬ���������ء�����һ������ɫ��Ϊ��ɫ��
	 $("#banner a:not(':first')").hide();
	 $("#banner #slide span:first").css("background","red");
	 setInterval("adAutoChange()", "3000"); //�Զ��л����ֺ�ͼƬ

	 //������ƶ������ֶ�Ӧ�л�����ӦͼƬ
	 $("#banner #slide span").mousemove(function () {
		 min = $(this).text() - 1;
		 adChange();
	 });
});




