<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%-- Importe as classes necess�rias --%>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="java.util.Locale" %>
<%@ page import="java.io.PrintWriter" %>

<%
    // Dados do usu�rio
    String nome = "Vitor Hugo";

    // Valores enviados pelo formul�rio
    String destinatario = request.getParameter("destinatario");
    double valorTransferencia = Double.parseDouble(request.getParameter("valor"));
    double saldoAtual = Double.parseDouble(request.getParameter("saldoAtual"));

    // Verifica se o valor da transfer�ncia � v�lido
    if (valorTransferencia <= 0) {
        out.println("O valor da transfer�ncia deve ser maior que zero.");
    } else if (valorTransferencia > saldoAtual) {
        out.println("Saldo insuficiente para realizar a transfer�ncia.");
    } else {
        // Calcula o novo saldo
        double novoSaldo = saldoAtual - valorTransferencia;

        // Atualiza o saldo
        saldoAtual = novoSaldo;
        %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Transfer�ncia de Dinheiro</title>

    <!-- Adicione links para os estilos do Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <style>
        .container {
            background-color: #f8f9fa;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        .saldo {
            font-size: 24px;
            font-weight: bold;
        }

        .transacoes {
            margin-top: 20px;
            background-color: #fff;
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 10px;
        }

        .transacao {
            margin-bottom: 10px;
        }

        .transacao p {
            font-size: 16px;
            margin: 0;
        }

        .btn-primary {
            background-color: #007bff;
            border-color: #007bff;
        }

        .btn-primary:hover {
            background-color: #0056b3;
            border-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container mt-5">
        <div class="row">
            <div class="col-md-6">
                <h1>Transfer�ncia de Dinheiro</h1>
            </div>
            <div class="col-md-6">
                <h1>Saldo Atual</h1>
                <p>Nome: <%= nome %></p>
                <p class="saldo">Saldo: R$ <%= NumberFormat.getCurrencyInstance(new Locale("pt", "BR")).format(saldoAtual) %></p>
            </div>
        </div>
        <div class="transacoes">
            <h2>Extrato</h2>
            <div class="transacao">
                <p>Data: 2023-10-17 | Descri��o: Dep�sito | Valor: R$ 10,000.00</p>
            </div>
            <div class="transacao">
                <p>Data: 2023-10-18 | Descri��o: Retirada | Valor: R$ -5,000.00</p>
            </div>
                <div class="transacao">
                <p>Data: 2023-10-19 | Descri��o: Retirada | Valor: R$ -100,00</p>
            </div>
        </div>
    </div>

    <!-- Adicione scripts Bootstrap e outros scripts necess�rios aqui -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
<%
    }
%>