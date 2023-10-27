<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #828282;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            width: 300px;
        }

        h2 {
            text-align: center;
        }

        input[type="text"], input[type="email"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        button[type="submit"] {
            background-color: #f6c000;
            color: black;
            border: none;
            border-radius: 5px;
            padding: 10px 15px;
            cursor: pointer;
            width: 100%;
        }
        
        button[type="reset"] {
            background-color: #f6c000;
            color: black;
            border: none;
            border-radius: 5px;
            padding: 10px 15px;
            cursor: pointer;
            width: 100%;
        }

        button[type="submit"]:hover {
            background-color: #0056b3;
        }
        
        button[type="reset"]:hover {
            background-color: #0056b3;
        }
        
        .error {
            color: red;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Cadastro</h2>
        <form action="BancoLogin.jsp" method="post" onsubmit="return validateForm()">
            <input type="text" placeholder="Nome" name="nome" required>
            <input type="email" placeholder="E-mail" name="email" required>
            <input type="text" placeholder="CPF" name="cpf" id="cpf" required>
            <input type="password" placeholder="Senha" name="senha" required>
            <button type="submit">Cadastrar</button>
            <p></p>
            <button type="reset">Limpar</button>
        </form>
        <div id="error-message" class="alert alert-danger mt-3" style="display: none;"></div><br><br>
    </div>

    <script>
        function validateForm() {
            var cpf = document.getElementById("cpf").value;
            var nome = document.querySelector('input[name="nome"]').value;
            var email = document.querySelector('input[name="email"]').value;

            if (!cpfIsValid(cpf)) {
                document.getElementById("error-message").innerText = "CPF inv�lido. Por favor, verifique.";
                document.getElementById("error-message").style.display = "block";
                return false;
            } else if (nome.trim() === "" || email.trim() === "") {
                document.getElementById("error-message").innerText = "Por favor, preencha todos os campos.";
                document.getElementById("error-message").style.display = "block";
                return false;
            }
            return true;
        }

        function cpfIsValid(cpf) {
            // Implemente sua valida��o de CPF aqui.
            // Retorna true se for v�lido, false caso contr�rio.
            // Aqui est� um exemplo simples de valida��o:
            // Substitua esta fun��o pelo seu m�todo de valida��o real.
            return /^\d{11}$/.test(cpf);
        }
    </script>
</body>
</html>