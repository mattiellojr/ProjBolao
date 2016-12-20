using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProjBolao.Models
{
    public class Aposta
    {
        public int id { get; set; }

        public int usua_id { get; set; }

        public int resulTime1 { get; set; }

        public int penaltiTime1 { get; set; }

        public int resulTime2 { get; set; }

        public int penaltiTime2{ get; set; }

        public string comentarios { get; set; }
    }
}