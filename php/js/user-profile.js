//I think I am just going to give up on this stupid script and just make this php :)
$(document).ready(function(){
	/*
	$('.list-group-item.settings').click(function(){
		console.log('hello');
		$('.toggle').remove();
		$('.col-md-8').append('<div class="toggle"><div class="user-account-settings"><div class="settings-group"><h3>Username</h3><div class="input-group"><span class="input-group-addon"><i class="fa fa-user fa-fw"></i></span><input class="form-control username" type="text" placeholder="Username"></div></div><div class="settings-group"><h3>First Name</h3><div class="input-group"><span class="input-group-addon"><i class="fa fa-user fa-fw"></i></span><input class="form-control first-name" type="text" placeholder="First name"></div></div><div class="settings-group"><h3>Last Name</h3><div class="input-group"><span class="input-group-addon"><i class="fa fa-user fa-fw"></i></span><input class="form-control last-name" type="text" placeholder="Last name"></div></div><div class="settings-group"><h3>Email</h3><div class="input-group"><span class="input-group-addon"><i class="fa fa-envelope-o fa-fw"></i></span><input class="form-control email" type="text" placeholder="Email address"></div></div><div class="settings-group"><h3>State</h3><div class="input-group"><span class="input-group-addon"><i class="fa fa-location-arrow fa-fw"></i></span><input class="form-control state" type="text" placeholder="State"></div></div><div class="settings-group"><h3>Street</h3><div class="input-group"><span class="input-group-addon"><i class="fa fa-cab fa-fw"></i></span><input class="form-control street" type="text" placeholder="Street"></div></div><div class="settings-group"><h3>City</h3><div class="input-group"><span class="input-group-addon"><i class="fa fa-building-o fa-fw"></i></span><input class="form-control city" type="text" placeholder="City"></div></div><div class="settings-group"><h3>Zip</h3><div class="input-group"><span class="input-group-addon"><i class="fa fa-user fa-fw"></i></span><input class="form-control zip" type="text" placeholder="Zip"></div></div><div class="settings-group"><h3>Password</h3><div class="input-group"><span class="input-group-addon"><i class="fa fa-key fa-fw"></i></span><input class="form-control password" type="password" placeholder="Password"></div></div><div class="settings-group"><h3>Credit card number</h3><div class="input-group"><span class="input-group-addon"><i class="fa fa-credit-card fa-fw"></i></span><input class="form-control credit-card" type="password" placeholder="CC Number"></div></div><a class="btn btn-lg btn-success" onclick="submit()" href="#"><i class="fa fa-flag fa-2x pull-left"></i>Submit Changes</a></div></div>');
	});
	*/
});

function submit(){
	var info = [];
	info.username = $('input.form-control.username').val();
	info.fname = $('input.form-control.first-name').val();
	info.lname = $('input.form-control.last-name').val();
	info.email = $('input.form-control.email').val();
	info.state = $('input.form-control.state').val();
	info.street = $('input.form-control.street').val();
	info.city = $('input.form-control.city').val();
	info.zip = $('input.form-control.zip').val();
	info.password = $('input.form-control.password').val();
	info.cc = $('input.form-control.credit-card').val();

    $.ajax({ url: 'update_user_info.php',
         type: 'post',
         contentType: 'application/json',
         data: JSON.stringify(info),
         dataType: 'json',
         success: function(output) {
                      console.log(output);
                  }
	});

    //Clear inputs
    $('input.form-control.username').val('');
	$('input.form-control.first-name').val('');
	$('input.form-control.last-name').val('');
	$('input.form-control.email').val('');
	$('input.form-control.state').val('');
	$('input.form-control.street').val('');
	$('input.form-control.city').val('');
	$('input.form-control.zip').val('');
	$('input.form-control.password').val('');
	$('input.form-control.credit-card').val('');

}
