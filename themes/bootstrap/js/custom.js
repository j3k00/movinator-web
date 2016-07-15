
$( document ).ready(function() {
	//if ($('body').hasClass('site site-login')) {
		$('.flash-messages').delay( 3000 ).fadeOut("slow");
	//}
	
	if ($('body').hasClass('user user-create')) {
		$('#register-submit').click(function(e) {
			if ($('#User_password_repeat').val() != $('#User_password').val()) {
				e.preventDefault();
				console.log('errore password non valida');
				$('.flash-messages div a strong').text('Errore password non valida');
				$('.flash-messages').show();
			} else {
				console.log('password valida');
			}
		});
	}
});
