using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication4
{
    public partial class Sepet : System.Web.UI.Page
    {
        sqlSinifi baglan = new sqlSinifi();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Select * From Sepet", baglan.baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            
        }

        public static List<Sepet> GetBasketProducts()
        {
            List<Sepet> productList = new List<Sepet>();
            if (HttpContext.Current.Session["ProductID"] == null)
            {
                return productList;
            }
            else
            {
                productList = (List<Sepet>)HttpContext.Current.Session["ProductID"];
                return productList;
            }
        }

        public static void InsertProductToBasket(Sepet product)
        {
            List<Sepet> productList = new List<Sepet>();
            productList = (List<Sepet>)HttpContext.Current.Session["ProductID"];
            productList.Add(product);
            HttpContext.Current.Session["ProductID"] = productList;
        }

        public static void DeleteProductFromBasket(int productID)
        {
            List<Sepet> productList = new List<Sepet>();
            productList = (List<Sepet>)HttpContext.Current.Session["ProductID"];
            productList = productList.ToList();
            HttpContext.Current.Session["ProductID"] = productList;
        }


        public static void ClearBasket(int productID)
        {
            List<Sepet> productList = new List<Sepet>();  
            HttpContext.Current.Session["ProductID"] = productList;
        }
    }
}