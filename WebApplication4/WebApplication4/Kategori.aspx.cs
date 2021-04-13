using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication4
{
    public partial class Kategori : System.Web.UI.Page
    {
        sqlSinifi baglan = new sqlSinifi();

        protected void Page_Load(object sender, EventArgs e)
        {

            SqlCommand komut = new SqlCommand("Select * From Category", baglan.baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            DataList2.DataSource = oku;
            DataList2.DataBind();

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            SqlCommand ekle = new SqlCommand("INSERT INTO Sepet Values(1,1, 6624, 1, Chester Koltuk Takımı) ", baglan.baglanti());
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            SqlCommand ekle = new SqlCommand("INSERT INTO Sepet Values(2,2, 6624, 1, Chester Koltuk Takımı) ", baglan.baglanti());
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            SqlCommand ekle = new SqlCommand("INSERT INTO Sepet Values(3,3, 6624, 1, Chester Koltuk Takımı) ", baglan.baglanti());
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            SqlCommand ekle = new SqlCommand("INSERT INTO Sepet Values(4,1, 6624, 1, Chester Koltuk Takımı) ", baglan.baglanti());
        }
    }
}   
