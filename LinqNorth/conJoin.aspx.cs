using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LinqNorth
{
    public partial class conJoin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCompras3y5_Click(object sender, EventArgs e)
        {
            using (NorthwindDataContext ventas = new NorthwindDataContext())
            {
                var consulta3 = from B in ventas.Order_Details
                                where B.Products.ProductID == 3
                                select B;
                var consulta5 = from B in ventas.Order_Details
                                where B.Products.ProductID == 5
                                select B;
                var consulta = consulta3.Union(consulta5);
                gvConsulta.DataSource = consulta;
                gvConsulta.DataBind();
            }
        }

        protected void btnOrderde4y7_Click(object sender, EventArgs e)
        {
            using (NorthwindDataContext ventas = new NorthwindDataContext())
            {
                var consulta4 = from B in ventas.Order_Details
                                where B.Products.ProductID == 4
                                select B;
                var consulta7 = from B in ventas.Order_Details
                                where B.Products.ProductID == 7
                                select B;
                var consulta = consulta4.Union(consulta7);
                gvConsulta.DataSource = consulta;
                gvConsulta.DataBind();
            }
        }
    }
}