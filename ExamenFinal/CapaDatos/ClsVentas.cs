﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ExamenFinal.CapaDatos
{
    public class ClsVenta
    {
        public int ID { get; set; }
        public int ID_Agente { get; set; }
        public int ID_Cliente { get; set; }
        public int ID_Casa { get; set; }
        public DateTime Fecha { get; set; }
    }
}
