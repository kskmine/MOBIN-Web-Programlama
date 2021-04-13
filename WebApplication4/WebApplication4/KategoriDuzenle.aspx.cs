using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication4
{
    public partial class KategoriAdminDetay : System.Web.UI.Page
    {
        sqlSinifi bgl = new sqlSinifi();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["CategoryID"];
            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("Select * From Category where CategoryID= @p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr2 = komut.ExecuteReader();
                while (dr2.Read())
                {
                    TextBox1.Text = dr2[1].ToString();
                    TextBox2.Text = dr2[2].ToString();
                }
                bgl.baglanti().Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update Category set CategoryName=@p1, Description=@p2 where CategoryID=@p3", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}