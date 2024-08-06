function isFormValid(){
	let titulo = document.getElementById("titulo").value;
	let tipo_gasto = document.getElementById("tipo_gasto").value;
	let valor = document.getElementById("valor").value;
	
	let btn = document.getElementById("btn-cadastrar");
	if(titulo.length > 0 && 
	tipo_gasto != "default" && 
	valor.length > 0)
	{
		btn.disabled = false;
	}
	else {
		btn.disabled = true;
	}
 }
 function redirecionar() {
     var tipoGasto = document.getElementById("tipo_gasto").value;
     if (tipoGasto !== "") {
         document.getElementById("formCadastro").action = tipoGasto;
         return true;
     } else {
         alert("Por favor, selecione um destino válido.");
         return false;
     }
 }