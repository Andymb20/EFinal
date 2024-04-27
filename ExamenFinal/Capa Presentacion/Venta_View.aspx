<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Venta_View.aspx.cs" Inherits="ExamenFinal.Capa_Presentacion.Venta_View" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
    }
    h1 {
        text-align: center;
        margin-top: 20px;
    }
    form {
        width: 300px;
        margin: 20px auto;
        background-color: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    label {
        display: block;
        font-weight: bold;
        margin-bottom: 5px;
    }
    input[type="text"],
    input[type="email"],
    input[type="tel"],
    input[type="number"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
    }
    button[type="submit"] {
        width: 100%;
        padding: 10px;
        background-color: #007bff;
        color: #fff;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }
    button[type="submit"]:hover {
        background-color: #0056b3;
    }

    #menuButton {
        position: absolute;
        top: 10px;
        left: 10px;
        background-color: #007bff;
        color: #fff;
        padding: 10px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }
</style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>

  <button id="menuButton" onclick="location.href='Menuprincipal.aspx'">Menú</button>
<form id="form1" runat="server">
    <h1>Gestión de Ventas</h1>

    <form id="formAgregarVenta" onsubmit="agregarVenta(); return false;">
        ID Venta: <input type="text" id="idVenta"><br>
        Producto: <input type="text" id="producto"><br>
        Cantidad: <input type="text" id="cantidad"><br>
        <button type="submit">Agregar Venta</button>
    </form>

    <form id="formBorrarVenta" onsubmit="borrarVenta(); return false;">
        ID Venta: <input type="text" id="idBorrar"><br>
        <button type="submit">Borrar Venta</button>
    </form>

    <form id="formModificarVenta" onsubmit="modificarVenta(); return false;">
        ID Venta: <input type="text" id="idModificar"><br>
        Producto: <input type="text" id="productoModificar"><br>
        Cantidad: <input type="text" id="cantidadModificar"><br>
        <button type="submit">Modificar Venta</button>
    </form>

<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
    <Columns>
        <asp:BoundField DataField="id_venta" HeaderText="ID Venta" />
        <asp:BoundField DataField="id_agente" HeaderText="ID Agente" />
        <asp:BoundField DataField="id_cliente" HeaderText="ID Cliente" />
        <asp:BoundField DataField="id_casa" HeaderText="ID Casa" />
        <asp:BoundField DataField="fecha" HeaderText="Fecha" />
    </Columns>
</asp:GridView>


    </form>

<script>
    function agregarVenta() {
        var idVenta = document.getElementById("idVenta").value;
        var producto = document.getElementById("producto").value;
        var cantidad = document.getElementById("cantidad").value;

        // Aquí enviar la información de la nueva venta al servidor para agregarla a la base de datos
        console.log("Nueva venta:");
        console.log("ID Venta: " + idVenta);
        console.log("Producto: " + producto);
        console.log("Cantidad: " + cantidad);

        // Limpiar el formulario después de agregar la venta
        document.getElementById("formAgregarVenta").reset();
    }

    function borrarVenta() {
        var idBorrar = document.getElementById("idBorrar").value;

        // Aquí enviar la solicitud al servidor para borrar la venta con el ID proporcionado
        console.log("Borrar venta con ID: " + idBorrar);

        // Limpiar el formulario después de borrar la venta
        document.getElementById("formBorrarVenta").reset();
    }

    function modificarVenta() {
        var idModificar = document.getElementById("idModificar").value;
        var producto = document.getElementById("productoModificar").value;
        var cantidad = document.getElementById("cantidadModificar").value;

        // Aquí enviar la información de la venta modificada al servidor para actualizarla en la base de datos
        console.log("Modificar venta:");
        console.log("ID Venta: " + idModificar);
        console.log("Producto: " + producto);
        console.log("Cantidad: " + cantidad);

        // Limpiar el formulario después de modificar la venta
        document.getElementById("formModificarVenta").reset();
    }
</script>


    </form >
</body>
</html>
