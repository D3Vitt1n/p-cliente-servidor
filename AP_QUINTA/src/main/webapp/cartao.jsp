<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ícone de Cartão de Crédito</title>
    <style>
        .credit-card {
            width: 300px;
            height: 180px;
            background-color: Black;
            background-image: url('mastercard-logo.png'); /* Adicione o caminho para a imagem do logotipo da Mastercard aqui */
            background-size: 50px;
            background-repeat: no-repeat;
            background-position: 20px 20px;
            border-radius: 15px;
            display: flex;
            flex-direction: column;
            padding: 20px;
            color: gold;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        .card-top {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 15px;
        }

        .chip {
            width: 40px;
            height: 30px;
            background-color: #ccc;
            border-radius: 5px;
            
        }

        .card-logo {
            font-size: 24px;
        }

        .card-number {
            font-size: 18px;
            letter-spacing: 3px;
        }

        .card-info {
            display: flex;
            justify-content: space-between;
        }

        .card-holder {
            font-size: 16px;
        }

        .card-expiry {
            font-size: 16px;
        }
    </style>
</head>
<body>
    <div class="credit-card">
        <div class="card-top">
            <div class="card-logo">Mastercard</div>
        </div>
        <div class="card-number">** ** ** 1234</div>
        <div class="card-info">
            <div class="card-holder">John Doe</div>
            <div class="card-expiry">10/25</div>
        </div><br>
        <div class="chip"></div>
    </div>
</body>
</html>