<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Five Bank</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous">
    </script>
    <style>
        * {
            margin: 0px;
            padding: 0px;
        }

        body {
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .login-container {
            border: 1px dashed #000; 
            padding: 20px;
            border-radius: 10px; 
        }

        .menu {
            display: none;
        }
        
        #loginButton{
            background-color: #f6c000;
        }
        
        #loginButton:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="login-container col-lg-6">
        <h1>Login</h1><br>
        <form id="loginForm">
            <div class="mb-3">
                <label for="cpf" class="form-label">Digite seu CPF</label>
                <input type="text" class="form-control" id="cpf" name="cpf" aria-describedby="emailHelp" required>
                <div id="emailHelp" class="form-text">Nunca compartilharemos seus dados com mais ninguém.</div>
            </div>
            <div class="mb-3">
                <label for="senha" class="form-label">Senha</label>
                <input type="password" class="form-control" id="senha" name="senha" required>
            </div>
            <button type="button" class="btn" id="loginButton">Entrar</button>
        </form><br>
        <div id="error" class="alert alert-danger" style="display: none;"></div>
    </div>

    <script>
        document.getElementById("loginButton").addEventListener("click", function () {
            var cpf = document.getElementById("cpf").value;
            var senha = document.getElementById("senha").value;

            if (cpf === "12345678912" && senha === "54321") {
                // CPF e senha válidos, você pode executar a ação desejada aqui.
            	window.location.href="processaLogin.jsp";
            } else {
                // CPF ou senha incorretos, exibir mensagem de erro.
                document.getElementById("error").style.display = "block";
                document.getElementById("error").innerText = "CPF ou senha incorretos. Tente novamente.";
            }
        });
    </script>
</body>
</html>
