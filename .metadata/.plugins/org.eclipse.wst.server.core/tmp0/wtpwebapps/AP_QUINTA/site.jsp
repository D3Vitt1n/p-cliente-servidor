<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>FiveBank</title>

    <!-- Inclua as bibliotecas do Bootstrap -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <!-- Estilos personalizados -->
    <style>
        body {
            background-color: #fff; /* Fundo branco */
            color: #000; /* Texto preto */
        }

        .navbar {
            background-color: #fff; /* Navbar de fundo branco */
        }

        .navbar-brand {
            color: #ffd700; /* Cor do texto do navbar em dourado */
        }

        .jumbotron {
            background: url('./img/background.jpg') no-repeat center center; /* Imagem de fundo da seção de boas-vindas */
            background-size: cover;
            color: #000; /* Cor do texto na seção de boas-vindas (preto) */
        }

        .bank-card {
            border: none;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            margin: 20px 0;
            background-color: #fff; /* Fundo branco nos cards */
            color: #000; /* Texto preto nos cards */
        }

        .bank-card h5 {
            color: #ffd700; /* Cor do título em dourado nos cards */
        }

        .btn-primary {
            background-color: #ffd700; /* Botão em dourado */
            border: none;
        }
        
        .navbar {
            background-color: #ffd700; /* Navbar com background dourado */
        }
        .navbar-brand {
            color: #000; /* Cor do texto do navbar em preto */
            font-size: 24px; /* Tamanho da fonte do título */
            font-weight: bold; /* Estilo de fonte em negrito */
        }
        .navbar .btn-cadastro {
            background-color: #ffd700; /* Botão em dourado */
            color: #000; /* Cor do texto do botão em preto */
            margin-right: 10px; /* Margem à direita para espaçamento */
        }
        .navbar .btn-cadastro:hover {
            background-color: #ffd700; /* Cor de destaque do botão */
            color: #000; /* Cor do texto do botão em preto */
        }
    </style>
</head>

<body>

    <nav class="navbar navbar-expand-lg navbar-light">
        <a class="navbar-brand" href="#">FiveBank</a>
    </nav>

<div class="container mt-5">
    <div class="row">
        <div class="col-md-6">
            <h2>Bem-vindo ao FiveBank</h2>
            <p>Somos o seu banco de confiança, oferecendo soluções financeiras de última geração.</p>
            <p>Confira nossos serviços e descubra como podemos ajudá-lo a alcançar seus objetivos financeiros.</p>
            <a href="cadastro.jsp" class="btn btn-primary">Comece Agora</a>
        </div>
        <div class="col-md-6">
            <img src="./img/2logo.png" alt="Tech5 Bank Logo" class="img-fluid">
        </div>
    </div>
</div><br><br>

    <!-- Seção Missão, Visão e Valores com Cards -->
    <div class="container">
        <div class="row">
            <!-- Missão -->
            <div class="col-lg-4">
                <div class="card bank-card">
                    <div class="card-body">
                        <h5 class="card-title">Missão</h5>
                        <p class="card-text">A nossa missão é fornecer soluções financeiras inovadoras, acessíveis e seguras ao cliente, capacitando-os a atingir seus objetivos financeiros com facilidade. Buscamos transformar a experiência financeira por meio da tecnologia, focando na satisfação do cliente e na inclusão financeira, ao mesmo tempo que promovemos a transparência e a responsabilidade social.</p>
                    </div>
                </div>
            </div>

            <!-- Visão -->
            <div class="col-lg-4">
                <div class="card bank-card">
                    <div class="card-body">
                        <h5 class="card-title">Visão</h5>
                        <p class="card-text">O Five Bank tem a visão de se tornar líder global em inovação e serviços financeiros digitais, redefinindo o cenário financeiro e tecnológico. Nós buscamos capacitar pessoas e empresas em todo o mundo, oferecendo uma experiência financeira descomplicada, moldada às necessidades de clientes que compartilham valores comuns.</p>
                    </div>
                </div>
            </div>

            <!-- Valores -->
            <div class="col-lg-4">
                <div class="card bank-card">
                    <div class="card-body">
                        <h5 class="card-title">Valores</h5>
                        <ul>
                            <li>Tecnologia Inovadora</li>
                            <li>Sistema Simples</li>
                            <li>Acessibilidade</li>
                            <li>Responsabilidade Financeira</li>
                            <li>Excelência no Atendimento</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>
</html>