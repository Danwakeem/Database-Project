//Need to insert posts after the product-post class rather than the rows. maybe new class?
var addMorePosts = function(jsonObj){
	var obj = JSON.parse(jsonObj);
	$.each(obj, function(index,value){
		var html = "<div class=\"product-posts\"><div class=\"row\"><div class=\"col-md-4\"><a href=\"product_page.php?id=" + value['id'] + "\"><img src=\"" + value['featured_img'] + "\" style=\"width:100%;height:100%;\"></a></div><div class=\"col-md-8\"><h3><a href=\"product_page.php?id=" + value['id'] + "\">" + value['prod_name'] + "</a></h2><hr><p>" + value['prod_desc'] + "</p></div></div></div>";
		$(html).insertBefore(".more-posts");
	
	});
}

var addToCart = function(jsonObj){
	var obj = JSON.parse(jsonObj);
	$.each(obj, function(index,value){
		var html = '<div class="product-posts"><div class="row"><div class="col-md-4"><div class="row"><a href="product_page.php?id=' + value['id'] + '"><img src="' + value['featured_img'] + '" style="width:100%;height:100%;"></a></div></div><div class="col-md-8"><h4 style="margin-top: 0px;"><a href="product_page.php?id=' + value['id'] + '">' + value['prod_name'] + '</a></h4><p>Price: ' + value['price'] + '</p><a class="shopping-rm btn btn-danger" onclick="rmCart(' + value['id'] +');"><i class="fa fa-trash-o fa-lg"></i> Delete</a></div></div><p class="prodId" style="display: none;">' + value['id'] + '</p><hr></div>';
		$('.modal-body').append(html);
	});
}

var rmCart = function(prodId){
	console.log(prodId);
	$.ajax({url: 'get_products.php',
		data: {action: 'rmCart', proId: prodId},
		type: 'post',
		success: function(output){
			$('.prodId').each(function(index){
				var test = $( this ).text();
				console.log(test);
				if(Number(test) === prodId){
					$(this).parent().remove();
				}
			});
		}
	});
}


var toType = function(obj) {
  return ({}).toString.call(obj).match(/\s([a-zA-Z]+)/)[1].toLowerCase()
}

$(document).ready(function(){
	$('.profile-pic').ready(function(){
		var userId = $('.profile-pic').data('userid');
		$.ajax({url: 'get_products.php',
			 data: {action: 'profile-pic', usrId: userId},
			 type: 'post',
			 success: function(output){
			 		$('.profile-pic').attr('src',output);
			 }
		});
	});
	$('.fa-shopping-cart').click(function(){
		if($('.modal-body').is(':empty')){
			$.ajax({url: 'get_products.php',
			 data: {action: 'getCart'},
			 type: 'post',
			 success: function(output){
			 		addToCart(output);
			 }
			});
		}
	});
	$('.add-cart').click(function(){
		var prodId = $('#prod-id').text();
		$.ajax({ url: 'get_products.php',
		 data: {action: 'addToCart', proId: prodId},
		 type: 'post',
		 success: function(output){
		 			if(output != 1){
		 				$('.add-to-cart').empty();
			 			$('.add-to-cart').append('<p class="navbar-text">Added to shopping cart.<p>');
		 			}
		 			console.log(output);
		 		  }
		});
	});
	$('.load_more.btn.btn-primary').click(function(){
		$.ajax({ url: 'get_products.php',
         data: {action: 'mainPageGet'},
         type: 'post',
         success: function(output) {
                      addMorePosts(output);
                  }
		});
	});
	$('.search.btn.btn-primary').click(function(){
		$.ajax({ url: 'get_products.php',
         data: {action: 'loadMoreSearches'},
         type: 'post',
         success: function(output) {
                      addMorePosts(output);
                  }
		});
	});
	$('.category.btn.btn-primary').click(function(){
		$.ajax({ url: 'get_products.php',
         data: {action: 'moreFromCategory'},
         type: 'post',
         success: function(output) {
                      addMorePosts(output);
                  }
		});
	});
	$('.shopping-rm').click(function(){
		var prodId = $('#prodId').text();
		console.log(prodId);
		$.ajax({url: 'get_products.php',
			 data: {action: 'rmCart', proId: prodId},
			 type: 'post',
			 success: function(output){
			 		var par = $('#prodId').parent();
			 		par.remove();
			 }
		});
	});
	$("[rel=tooltip]").tooltip({ placement: 'bottom'});
});