using System;
using System.Web.UI;

namespace ExamenFinal.Presentacion
{
    public partial class Login : Page
    {
        // Declarar usuario como una variable de instancia de la clase Login
        Usuario usuario;

        public class Usuario
        {
            public string NombreUsuario { get; set; }
            public string Contraseña { get; set; }

            public Usuario(string nombreUsuario, string contraseña)
            {
                NombreUsuario = nombreUsuario;
                Contraseña = contraseña;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            // Inicializar usuario en el método Page_Load
            usuario = new Usuario("admin", "admin");
        }

        protected void btnIniciarSesion_Click(object sender, EventArgs e)
        {
            // Acceder a las propiedades del usuario
            string nombreUsuario = username.Value.ToLower(); // Convertir a minúsculas
            string contraseña = password.Value.ToLower(); // Convertir a minúsculas

            // Verificar si las credenciales coinciden con el usuario admin
            if (nombreUsuario == usuario.NombreUsuario && contraseña == usuario.Contraseña)
            {
                // Iniciar sesión para el usuario admin
                Response.Redirect("Menuprincipal.aspx");
                return;
            }

            lblError.Text = "Credenciales inválidas";
        }
    }
}
