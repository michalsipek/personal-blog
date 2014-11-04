$(document)
		.ready(
				function() {
					$(".registrationForm")
							.validate(
									{
										rules : {
											name : {
												required : true,
												minlength : 3,
												maxlength : 20
											},
											email : {
												required : true,
												email : true
											},
											password : {
												required : true,
												minlength : 3,
												maxlength : 20
											},
											password_again : {
												required : true,
												minlength : 3,
												maxlength : 20,
												equalTo : "#password"
											},
											title : {
												required : true,
												minlength : 3,
												maxlength : 250
											},
											content : {
												required : true,
												minlength : 3
											},
											categories : {
												required : true
											},
											users : {
												required : true
											},
											roles : {
												required : true
											}
										},
										messages : {
											name : {
												required : "Pole nesmí být prázdné!",
												minlength : "Musíte zadat alespoò 3 znaky!",
												maxlength : "Je povoleno nejvýše 20 znakù!"
											},
											email : {
												required : "Pole nesmí být prázdné!",
												email : "Zadán špatný tvar emailu!"
											},
											password : {
												required : "Pole nesmí být prázdné!",
												minlength : "Musíte zadat alespoò 3 znaky!",
												maxlength : "Je povoleno nejvýše 20 znakù!",
											},
											password_again : {
												equalTo : "Heslo není stejné!",
												required : "Pole nesmí být prázdné!",
												minlength : "Musíte zadat alespoò 3 znaky!",
												maxlength : "Je povoleno nejvýše 20 znakù!"
											},
											title : {
												required : "Pole nesmí být prázdné!",
												minlength : "Musíte zadat alespoò 3 znaky!",
												maxlength : "Je povoleno nejvýše 250 znakù!"
											},
											content : {
												required : "Pole nesmí být prázdné!",
												minlength : "Musíte zadat alespoò 3 znaky!",
											},
											categories : {
												required : "Musíte oznaèit alespoò jednu kategorii!",
											},
											users : {
												required : "Musíte oznaèit alespoò jednoho uživatele!",
											},
											roles : {
												required : "Musíte pøiøadit alespoò jednu roli!",
											}
										},

										highlight : function(element) {
											$(element).closest('.form-group')
													.removeClass('has-success')
													.addClass('has-error');
										},
										unhighlight : function(element) {
											$(element).closest('.form-group')
													.removeClass('has-error')
													.addClass('has-success');
										}
									});

				});