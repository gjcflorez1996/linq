using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LinqNorth
{
    public partial class ConProyeccion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCategories_Click(object sender, EventArgs e)
        {
            //listar la tabla Categoria
            NorthwindDataContext categoria = new NorthwindDataContext();
            var consulta = from C in categoria.Categories select C;
            gvConsulta.DataSource = consulta;
            gvConsulta.DataBind();
        }

        protected void btnProducts_Click(object sender, EventArgs e)
        {
            //listar la tabla Products
            NorthwindDataContext products = new NorthwindDataContext();
            var consulta = from P in products.Products select P;
            gvConsulta.DataSource = consulta;
            gvConsulta.DataBind();
        }

        protected void btnSuppliers_Click(object sender, EventArgs e)
        {
            //listar la tabla Suppliers
            NorthwindDataContext suppliers = new NorthwindDataContext();
            var consulta = from S in suppliers.Suppliers select S;
            gvConsulta.DataSource = consulta;
            gvConsulta.DataBind();
        }
    }
}