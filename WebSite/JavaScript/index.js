function validarForms(event) {
    //Obtem os valores dos campos de email e senha
    var email = document.getElementById('email').value; //acessa o valor do campo de email
    var senha = document.getElementById('senha').value; //acessa o valor do campo de senha
    //Verifica se o email esta vazio
    if (email == "") {
        alert("Por favor, insira seu email!");
        event.preventDefault(); //impede o envio do formulario
        return false;
    }
    //verifica se a senha esta vazia
    if (senha == "") {
        alert("Por favor, insira sua senha!");
        event.preventDefault(); //impede o envio do formulario
        return false;
    }
    return true; //se os campos estiverem preenchidos, o formulario é enviado
}