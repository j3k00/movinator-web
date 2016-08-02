$(document).ready(function() {
	//if ($('body').hasClass('site site-login')) {
		$('.flash-messages').delay( 3000 ).fadeOut("slow");
	//}
	
	if ($('body').hasClass('user user-create')) {
		$('#User_password_repeat').keyup(function() {
			checkPassword();
		});
		
		$('#User_password').keyup(function() {
			checkPassword();
		});
		
	}
});

function checkPassword() {
	if ($('#User_password_repeat').val() != $('#User_password').val()) {
		if (!$('#User_password_repeat').hasClass('error')) {
			$('#User_password_repeat').parent().append('<div class="errorMessage">Password mismatch</div>');
		}
		$('#User_password_repeat').addClass('error');
		
		$('#User_password').addClass('error');
		$('#register-submit').prop('disabled', true);
	} else {
		$('#User_password').removeClass('error');
		$('#User_password_repeat').removeClass('error');
		
		$('.errorMessage').remove();
		$('#register-submit').prop('disabled', false);
	}
}
