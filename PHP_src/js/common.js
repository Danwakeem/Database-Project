//Need to insert posts after the product-post class rather than the rows. maybe new class?
var addMorePosts = function(jsonObj){
	var obj = JSON.parse(jsonObj);
	$.each(obj, function(index,value){
		var html = "<div class=\"product-posts\"><div class=\"row\"><div class=\"col-md-4\"><a href=\"product_page.php?id=" + value['id'] + "\"><img src=\"img_default/default-prod.jpg\" style=\"width:100%;height:100%;\"></a></div><div class=\"col-md-8\"><h3><a href=\"product_page.php?id=" + value['id'] + "\">" + value['prod_name'] + "</a></h2><hr><p>" + value['prod_desc'] + "</p></div></div></div>";
		$(html).insertBefore(".more-posts");
	
	});
}

var toType = function(obj) {
  return ({}).toString.call(obj).match(/\s([a-zA-Z]+)/)[1].toLowerCase()
}

$(document).ready(function(){
	$('.load_more.btn.btn-primary').click(function(){
		$.ajax({ url: 'get_products.php',
         data: {action: 'mainPageGet'},
         type: 'post',
         success: function(output) {
                      addMorePosts(output);
                  }
		});
	});
});