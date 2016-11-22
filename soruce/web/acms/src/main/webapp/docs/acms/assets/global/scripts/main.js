$(document).ready(function (){
	
	// jquery validate 사업자등록번호 체크
	$.validator.addMethod("bzno_check", function(value, element) {
	    return this.optional(element) || value == checkBizID(element);
	},"잘못된 사업자 등록번호입니다.");
	
	// 탭 메뉴의 삭제 버튼
	$(".nav-tabs").on("click", "span", function () {
        var anchor = $(this).siblings('a');
        $(anchor.attr('href')).remove();
        var _navtabs = $(this).parent().parent();
        $(this).parent().remove();
        $(_navtabs).children('li').children('a').first().click();
    });	
	
});

/**
 * @author sanghyun
 * @date 2016. 11. 9.
 * @content 
 * @since 1.0
 * @param menu
 * @returns
 */
function openMenu(url,menu,menuname){
    App.blockUI();

	var $page_tab = $("#page-footer-tab").find("li");
	
	// 요청 메뉴 존재시 해당 메뉴 활성화
	if(!menuExistence($page_tab , menu)){ 
		try {
			// 메뉴 미등록 시 신규 추가 
			LoadAjaxContent(url,"", "post");
			// 메뉴 추가
			$("#page-footer-tab").append('<li><a data-toggle="tab" href="#'+menu+'">' + menuname + '</a><span> x </span></li>');
		} catch(e){
			console.log(e);
		} finally{
			App.unblockUI();
		}
	}else {
		App.unblockUI();
	} // end if(menuExistence())
	// 화면 활성화
	$('.nav-tabs a[href="#'+menu+'"]').tab('show');
} // end function openMenu

/**
 * 
 * @author sanghyun
 * @date 2016. 11. 9.
 * @content 특정 메뉴의 활성화 여부 확인  
 * @since 1.0
 * @param $menuArray
 * @returns
 */
function menuExistence($page_tab , menu) {
	for(var idx = 0 ; idx < $page_tab.length ; idx ++){
		if($($page_tab[idx]).find("a").attr("href") === "#" + menu){
			return true;
		} // end if()
	} // end for()
	
	return false;
} // end function menuExistence()

/**
 * @author sanghyun
 * @date 2016. 11. 14.
 * @content view load
 * @since 1.0
 * @param url
 * @param params
 * @param method
 * @returns
 */
function LoadAjaxContent(url,params,method){	
	
	if(url != "" && url != "#" && typeof url !== "undefined"){
		var type = typeof method !== "undefined" ?  method : "GET";
			
		$.ajax({
			mimeType: 'text/html; charset=utf-8',
			dataType: "html",
			async: false,
			url: url,
			data:params,
			type: type,
			success: function(data) {
				$('#index-tab-content').append(data);
			}
		 	,beforeSend:function(){
		    }
		    ,complete:function(){
		    }						
			,error: function (jqXHR, textStatus, errorThrown) {
				alert("오류가 발생하였습니다. 관리자에게 문하세요.");
				throw "오류";
			},
		}); // end $.ajax
	} // end if
    return true;
} // end function LoadAjaxContent
