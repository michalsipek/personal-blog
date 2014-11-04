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
												required : "Pole nesm� b�t pr�zdn�!",
												minlength : "Mus�te zadat alespo� 3 znaky!",
												maxlength : "Je povoleno nejv��e 20 znak�!"
											},
											email : {
												required : "Pole nesm� b�t pr�zdn�!",
												email : "Zad�n �patn� tvar emailu!"
											},
											password : {
												required : "Pole nesm� b�t pr�zdn�!",
												minlength : "Mus�te zadat alespo� 3 znaky!",
												maxlength : "Je povoleno nejv��e 20 znak�!",
											},
											password_again : {
												equalTo : "Heslo nen� stejn�!",
												required : "Pole nesm� b�t pr�zdn�!",
												minlength : "Mus�te zadat alespo� 3 znaky!",
												maxlength : "Je povoleno nejv��e 20 znak�!"
											},
											title : {
												required : "Pole nesm� b�t pr�zdn�!",
												minlength : "Mus�te zadat alespo� 3 znaky!",
												maxlength : "Je povoleno nejv��e 250 znak�!"
											},
											content : {
												required : "Pole nesm� b�t pr�zdn�!",
												minlength : "Mus�te zadat alespo� 3 znaky!",
											},
											categories : {
												required : "Mus�te ozna�it alespo� jednu kategorii!",
											},
											users : {
												required : "Mus�te ozna�it alespo� jednoho u�ivatele!",
											},
											roles : {
												required : "Mus�te p�i�adit alespo� jednu roli!",
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