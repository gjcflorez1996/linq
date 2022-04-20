using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LinqNorth
{
    public partial class ConPartial : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnNombre_Click(object sender, EventArgs e)
        {
            using (NorthwindDataContext ventas = new NorthwindDataContext())
            {
                var consulta = from E in ventas.Employees
                               select new
                               {
                                   E.TitleOfCourtesy,
                                   Nombres_Completos = E.NombreCompleto(),
                                   E.Address
                               };
                gvConsulta.DataSource = consulta;
                gvConsulta.DataBind();
            }
        }

        protected void btnOrder22_Click(object sender, EventArgs e)
        {
            using (NorthwindDataContext ventas = new NorthwindDataContext())
            {
                var consulta = from O in ventas.Products
                               select new
                               {
                                   O.ProductID,
                                   total = O.Total()
                               };
                gvConsulta.DataSource = consulta;
                gvConsulta.DataBind();
            }
        }

        protected void btnStock_Click(object sender, EventArgs e)
        {
            using (NorthwindDataContext ventas = new NorthwindDataContext())
            {
                var consulta = from P in ventas.Products
                               select new
                               {
                                   P.ProductID,
                                   Nombres_Completos = P.Stock(),
                            
                               };
                gvConsulta.DataSource = consulta;
                gvConsulta.DataBind();
            }
        }
    }
}

