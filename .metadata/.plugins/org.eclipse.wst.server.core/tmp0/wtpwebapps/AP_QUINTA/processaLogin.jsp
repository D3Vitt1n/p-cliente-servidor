<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Transfer�ncia de Dinheiro</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
          rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
          crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
            crossorigin="anonymous"></script>
    <style>
        * {
            margin: 0;
            padding: 0;
        }

        body {
            display: flex;
            align-items: center;
            justify-content: center;
            height: 80vh;
        }

        .container {
            margin-top: 20px;
        }
        
        .card-mastercard {
		    width: 300px;
		    background-color: #ffcc00;
		    border: 1px solid #000;
		    padding: 10px;
		    text-align: center;
		    box-shadow: 5px 5px 5px #888888;
		}

		.card-logo img {
		    max-width: 60px;
		}
		
		.card-number {
		    font-size: 18px;
		    margin-top: 10px;
		}
		
		.card-holder {
		    font-size: 14px;
		    margin-top: 10px;
		}
    </style>
</head>
<body>
<%
    // Dados do usu�rio
    String nome = "Vitor Hugo";
    double saldo = 100.0;
%>

<div class="container">
    <div class="col-lg-12">
        <h1 class="mb-3">Bem-vindo, <%=nome %>!</h1>
        <p>Saldo: R$ <span id="saldo"><%=String.format("%.2f", saldo) %></span></p>

        <!-- Formul�rio de transfer�ncia -->
        <form id="transferForm" action="Transferencia.jsp" method="post">
            <div class="mb-3">
                <label for="destinatario" class="form-label">Destinat�rio:</label>
                <input type="text" class="form-control" id="destinatario" name="destinatario" required>
            </div>
            <div class="mb-3">
                <label for="valor" class="form-label">Valor (R$):</label>
                <input type="number" class="form-control" id="valor" name="valor" step="0.01" required>
            </div>
            <input type="hidden" name="saldoAtual" value="<%= saldo %>">
            <button type="button" class="btn btn-primary" id="transferirBtn">Transferir</button>
        </form>
        <div class="alert alert-danger mt-3" id="error-message" style="display: none;"></div>
    </div><br>
    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#cartaoModal">
    	Meu Cart�o
	</button>
</div>

<!-- Modal -->
<div class="modal fade" id="cartaoModal" tabindex="-1" aria-labelledby="cartaoModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="cartaoModalLabel">FIVEBANK</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Fechar"></button>
            </div>
            <div class="modal-body">
                <div class="card-mastercard">
                    <div class="card-logo">
                        <img src="./img/mastercard-logo.png" alt="Mastercard">
                    </div>
                    <div class="card-info">
                        <p class="card-number">**** **** **** 1234</p>
                        <p class="card-holder">Titular: <%=nome %></p>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Fechar</button>
            </div>
        </div>
    </div>
</div>

<script>
    document.getElementById("transferirBtn").addEventListener("click", function () {
        var destinatario = document.getElementById("destinatario").value;
        var valor = parseFloat(document.getElementById("valor").value);
        var saldoAtual = <%= saldo %>;

        if (!destinatario.trim()) {
            showError("Por favor, insira um destinat�rio.");
        } else if (isNaN(valor) || valor <= 0) {
            showError("Por favor, insira um valor v�lido maior que zero.");
        } else if (valor > saldoAtual) {
            showError("Saldo insuficiente para realizar a transfer�ncia.");
        } else {
            document.forms["transferForm"].submit();
        }
    });

    function showError(message) {
        document.getElementById("error-message").innerText = message;
        document.getElementById("error-message").style.display = "block";
    }
</script>
</body>
</html>