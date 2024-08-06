function isFormValid(){
	let nome = document.getElementById("nome").value;
	let cpf = document.getElementById("cpf").value;
	let email = document.getElementById("email").value;
	let password = document.getElementById("password").value;		
	let salario = document.getElementById("salario").value;
	let dt_aniversario = document.getElementById("dt_aniversario").value;

	
	let btn = document.getElementById("btn-cadastrar");
	if(nome.length > 0 && 
	cpf.length > 0 &&
	email.length > 0 && 
	password.length > 0 &&
	dt_aniversario != "" &&
	salario > 0
	 ){
		btn.disabled = false;
	}
	else {
		btn.disabled = true;
	}
 }
 
 function hasYear(date){
	let ano = date.substring(0,4);
	if(ano != "0000"){
		return true;
	}
	else{
		return false;
	}
 }