using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LinqNorth
{
    public partial class ConLamba : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConsultar_Click(object sender, EventArgs e)
        {
            //PRODUCTS Orders
            using (NorthwindDataContext ventas = new NorthwindDataContext())
            {
                int nro = int.Parse(txtNro.Text);
                var consulta = ventas.Products.Where(P => P.UnitsOnOrder > nro);
                gvConsulta.DataSource = consulta;
                gvConsulta.DataBind();
            }
        }

        protected void btnStock_Click(object sender, EventArgs e)
        {
            //PRODUCTS Sotck
            using (NorthwindDataContext ventas = new NorthwindDataContext())
            {
                int nro = int.Parse(txtNro.Text);
                var consulta = ventas.Products.Where(P => P.UnitsInStock > nro);
                gvConsulta.DataSource = consulta;
                gvConsulta.DataBind();


            }
        }

        protected void btnCantidad_Click(object sender, EventArgs e)
        {
            using (NorthwindDataContext ventas = new NorthwindDataContext())
            {
                var consulta = from O in ventas.Order_Details
                               group O by O.Products.ProductID into P
                               select new
                               {
                                   ProductId = P.Key,
                                   Total=P.Sum(O=>O.UnitPrice*O.Quantity)
                               };
                gvConsulta.DataSource = consulta;
                gvConsulta.DataBind();
            }


        }

    }
}