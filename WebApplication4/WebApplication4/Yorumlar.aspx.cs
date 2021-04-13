using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication4
{
    public partial class Yorumlar : System.Web.UI.Page
    {
        sqlSinifi bgl = new sqlSinifi();
        string productID = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            //yorumları listele
            SqlCommand komut3 = new SqlCommand("Select * From Yorumlar where productID=@p2", bgl.baglanti());
            komut3.Parameters.AddWithValue("@p2", productID);
            SqlDataReader dr3 = komut3.ExecuteReader();
            DataList1.DataSource = dr3;
            DataList1.DataBind();

        }
    }
}