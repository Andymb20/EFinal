<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ExamenFinal.Presentacion.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

   
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <link href="CSS/login.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-container">
            <div class="header">
            </div>
            <div class="header">
                <img src="https://img.freepik.com/vector-gratis/fondo-futurista-degradado-geometrico_23-2149116406.jpg" alt="Imagen de encabezado" />
            </div>
            <h2>Iniciar Sesión</h2>
            <div class="form-group">
                <label for="username">Usuario:</label>
                <input type="text" id="username" name="username" runat="server" required>
            </div>
            <div class="form-group">
                <label for="password">Contraseña:</label>
                <input type="password" id="password" name="password" runat="server" required>
            </div>
            <div>
                <asp:Button ID="btnIniciarSesion" runat="server" Text="Iniciar sesión" CssClass="btn btn-primary" OnClick="btnIniciarSesion_Click" />
            </div>
            <asp:Label ID="lblError" runat="server" Text="" ForeColor="Red"></asp:Label>
        </div>
    </form>
</body>


    <style>

        body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    margin: 0;
    padding: 0;
    background: #f4f4f4;
}

.login-container {
    max-width: 1000px;
    margin: 0 auto;
    padding: 40px;
    border-radius: 5px;
    background: #fff;
    box-shadow: 0px 0px 10px rgba(0,0,0,0.1);
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
}

.header img {
    display: block;
    max-width: 200px;
    margin: 0 auto 20px auto;
}

h2 {
    text-align: center;
    color: #333;
    margin-bottom: 30px;
    font-size: 24px;
}

.form-group {
    margin-bottom: 20px;
}

label {
    display: block;
    margin-bottom: 5px;
    color: #333;
}

input[type="text"],
input[type="password"] {
    width: 100%;
    padding: 10px;
    border: 1px solid #ddd;
    border-radius: 5px;
    outline: none;
    font-size: 16px;
}

.btn {
    width: 100%;
    padding: 10px;
    background-color: #007BFF;
    color: #fff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-size: 18px;
    transition: background-color 0.3s ease;
}

    .btn:hover {
        background-color: #0056b3;
    }

        </style>
</html>
