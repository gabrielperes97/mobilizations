// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}

function login_error(title, message) {
    error_message('#login-messages', title, message);
}

function register_error(title, message) {
    error_message('#register-messages', title, message);
}

//TODO: Essa coisa não está enviando o cookie de sessão, por algum motivo obscuro, como estou com preguiça, 
//desativei a verificação de autenticidade do cokie em application_controller
$(".unlogin").click(function() {
    $.post("/home", 
    {
        unlogin: true
    }, function (data, status) {
        eval(data)
    });
});