
/**
 * https://stackoverflow.com/questions/15466802/how-can-i-auto-hide-alert-box-after-it-showing-it/15466856#15466856
 */
function popupMsg(msg,duration)
{
    var el = document.createElement("div");
    el.setAttribute("style","position: fixed;left: 50%;top: 50%;transform: translate(-50%, -50%);align-items:center;justify-content:center;text-align:center;padding-top:55px;font-size: 16px;width:150px;height:150px;background-color:rgb(244, 170, 166);border-radius:75px;border-style: double;border-color:#0d4e88;border-width:5px;");
    el.innerHTML = msg;
    setTimeout(function(){
        el.parentNode.removeChild(el);
    },duration);
    document.body.appendChild(el);
}

function buy(bookid){
	$.post("books_buy", {booksid:bookid}, function(data){
		if(data=="ok") {
            setTimeout('popupMsg("成功新增至購物車", 1000);', 0);
            setTimeout('location.reload();', 1100);
        }
		else if(data=="fail")
		{
            popupMsg("庫存不足,請致電工作人員!", 1000);
		}
	});
}
/**
 * 將書本購買數減1
 */
function lessen(booksid){
    $.post("books_lessen", {booksid:booksid}, function(data){
        if(data=="ok"){
            setTimeout('popupMsg("成功將書本數減1", 1000);', 0);
            setTimeout('location.reload();', 1100);
        }
		else{
			popupMsg("刪除失敗", 1000);
		}
    });
}
/**
 * 將書本從購物車中刪除
 */
function deletes(bookid){
    $.post("books_delete", {booksid:bookid}, function(data){
        if(data=="ok"){
            setTimeout('popupMsg("成功將書本從購物車中刪除", 1000);', 0);
            setTimeout('location.reload();', 1100);
        }
        else{
            popupMsg("刪除失敗", 1000);
        }
    });
}