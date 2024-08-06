function isFormValid(){
	let user = document.getElementById("user").value;
	let password = document.getElementById("password").value;
	
	let btn = document.getElementById("btn-entrar");
	if(user.length > 0 && password.length > 0){
		btn.disabled = false;
	}
	else {
		btn.disabled = true;
	}
 }