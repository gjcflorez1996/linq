using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LinqNorth
{
    public partial class Products
    {


        //metodo que calcula el total por boleta
        public double Total()
        {
            double totalA = 0;
            foreach (Order_Details O in this.Order_Details)
            {
                totalA = totalA + ((double)O.UnitPrice) * O.Quantity;
            }
            return totalA;
        }
        public double TotalOder()
        {
            double NumerodeOrder = 0;
            foreach (Order_Details O in this.Order_Details)
            {
                NumerodeOrder = NumerodeOrder + 1;
            }
            return NumerodeOrder;
        }

        public string Stock()
        {
            return ProductName + " ===> " + UnitsInStock;
        }





    }
}