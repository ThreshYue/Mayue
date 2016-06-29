/**
 * 绑定事件
 */
$("document").ready(function() {
	$("i").on('click', iclickhandler);
	$("ul").on('click', "li", liclickhandler);
	afterLoad();
	$("#Provinces .selected ").on('DOMNodeInserted', afterChange);
});

/**
 * 点击显示下拉菜单
 */
function iclickhandler() {
	$(this).siblings(".list").children("ul").slideToggle("fast");
}
/**
 * 选择菜单选项
 */
function liclickhandler() {
	$(this).parents("div").siblings(".selected").text($(this).text());
	$(this).parents("ul").slideToggle("fast");
}
/**
 * 网页加载成功后加载所有省份到菜单项
 */
function afterLoad() {
	$.ajax({
		url : "service/ProvinceAjax.jsp",
		type : "POST",
		dataType : "json",
		success : function(jsonary) {
			for (var i = 0; i < jsonary.length; i++) {
				$("#Provinces ul").append('<li>' + jsonary[i].name + "</li>");
			}
		}
	});
}
/**
 * 省份选择改变时，刷新城市菜单项
 */
function afterChange() {
	$("#City .selected").text("");
	$.ajax({
		url : "service/CityAjax.jsp",
		type : "POST",
		data : "Province=" + $("#Provinces .selected").text(),
		dataType : "json",
		success : function(jsonary) {
			$("#City li").each(function() {
				$(this).remove();
			});
			for (var i = 0; i < jsonary.length; i++) {
				$("#City ul").append('<li>' + jsonary[i].name + "</li>");
			}
		}
	});
}