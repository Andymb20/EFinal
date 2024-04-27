using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ExamenFinal.CapaLogica;

namespace ExamenFinal.Capa_Presentacion
{
    public partial class Venta_View : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                Venta_OP venta_OP = new Venta_OP();
                venta_OP.ConfigurarGridView(GridView1);
            }
        }
     }
}
