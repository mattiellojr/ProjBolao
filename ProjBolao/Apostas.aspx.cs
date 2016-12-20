using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjBolao
{
    public partial class Apostas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //this.listApostas.DataSource = YourDataSource;
            this.listApostas.DataBind();
        }

        private void btnSalvarClick(object sender, EventArgs e)
        {
            if (Convert.ToInt32(resul1.Value) < 0 || Convert.ToInt32(resul2.Value) < 0)
            {
                string script = "alert(\"Os resultados não podem ser negativos\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                                      "ServerControlScript", script, true);
            }
            
        }

    }
}