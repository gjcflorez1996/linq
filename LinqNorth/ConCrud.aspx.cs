using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LinqNorth
{
    public partial class ConCrud : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        /****************************************/
        /****************Categoria***************/
        /****************************************/
        NorthwindDataContext ventas = new NorthwindDataContext();
        private IList<Categories> ListarC()
        {
            var consulta = from C in ventas.Categories
                           select C;
            return consulta.ToList();
        }


        /****************************************/
        /****************Suppliers***************/
        /****************************************/
        NorthwindDataContext ventas2 = new NorthwindDataContext();
        private IList<Suppliers> ListarS()
        {
            var consulta = from C in ventas2.Suppliers
                           select C;
            return consulta.ToList();
        }





        /****************************************/
        /****************Productos***************/
        /****************************************/
        NorthwindDataContext ventas3 = new NorthwindDataContext();
        private IList<Products> ListarP()
        {
            var consulta = from C in ventas3.Products
                           select C;
            return consulta.ToList();
        }


        protected void btnListarC_Click(object sender, EventArgs e)
        {
    
            gvConsulta.DataSource = ListarC();
            gvConsulta.DataBind();

        }

        protected void btnAgregarC_Click(object sender, EventArgs e)
        {
            NorthwindDataContext ventas = new NorthwindDataContext();
            Categories category = new Categories();
            //int codigo = int.Parse(this.txtIDC.Text);
            //string name = this.txtNameC.Text;
            //string description = this.txtDescriptionC.Text;
            //string picture = this.FileCateogir.ToString();
            category.CategoryID = int.Parse(txtIDC.Text.Trim());
            category.CategoryName = txtNameC.Text.Trim();
            category.Description = txtDescriptionC.Text.Trim();
            //category.Picture = FileCateogir.Text.Trim();

         


        }

        protected void btnEliminarC_Click(object sender, EventArgs e)
        {

        }

        protected void btnActualizarC_Click(object sender, EventArgs e)
        {

        }

        protected void btnListarS_Click(object sender, EventArgs e)
        {
            gvConsulta.DataSource = ListarS();
            gvConsulta.DataBind();
        }

        protected void btnAgregarS_Click(object sender, EventArgs e)
        {

        }

        protected void btnEliminarS_Click(object sender, EventArgs e)
        {

        }

        protected void btnActualizarS_Click(object sender, EventArgs e)
        {

        }

        protected void btnListarP_Click(object sender, EventArgs e)
        {
            gvConsulta.DataSource = ListarP();
            gvConsulta.DataBind();
        }

        protected void btnAgregarP_Click(object sender, EventArgs e)
        {

        }

        protected void btnEliminarP_Click(object sender, EventArgs e)
        {

        }

        protected void btnActualizarP_Click(object sender, EventArgs e)
        {

        }
    }
}