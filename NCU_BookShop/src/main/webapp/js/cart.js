
/**
 * https://stackoverflow.com/questions/15466802/how-can-i-auto-hide-alert-box-after-it-showing-it/15466856#15466856
 */
function popupMsg(msg,duration)
{
    var el = document.createElement("img");
    switch (msg) {
        case 'add':
            el.setAttribute("src", "./images/2.png");
            break;
        case 'out of stock':
            el.setAttribute("src", "./images/1.png");
            break;
        case 'lessen':
            el.setAttribute("src", "./images/4.png");
            break;
        case 'lessen failed':
            el.setAttribute("src", "./images/6.png");
            break;
        case 'delete':
            el.setAttribute("src", "./images/3.png");
            break;
        case 'delete failed':
            el.setAttribute("src", "./images/5.png");
            break;
        default:
            console.log('error');
    }
    
    el.setAttribute("style","z-index: 20;position: fixed;left: 50%;top: 50%;transform: translate(-50%, -50%);align-items:center;justify-content:center;text-align:center;font-size: 16px;width:200px;height:200px;border-radius:100px;");
    setTimeout(function(){
        el.parentNode.removeChild(el);
    },duration);
    document.body.appendChild(el);
}

function buy(bookid){
	$.post("books_buy", {booksid:bookid}, function(data){
		if(data=="ok") {
            setTimeout('popupMsg("add", 1000);', 0);
            setTimeout('location.reload();', 1100);
        }
		else if(data=="fail")
		{
            popupMsg("out of stock", 1000);
		}
	});
}
/**
 * 將書本購買數減1
 */
function lessen(booksid){
    $.post("books_lessen", {booksid:booksid}, function(data){
        if(data=="ok"){
            setTimeout('popupMsg("lessen", 1000);', 0);
            setTimeout('location.reload();', 1100);
        }
		else{
			popupMsg("lessen failed", 1000);
		}
    });
}
/**
 * 將書本從購物車中刪除
 */
function deletes(bookid){
    $.post("books_delete", {booksid:bookid}, function(data){
        if(data=="ok"){
            setTimeout('popupMsg("delete", 1000);', 0);
            setTimeout('location.reload();', 1100);
        }
        else{
            popupMsg("delete failed", 1000);
        }
    });
}