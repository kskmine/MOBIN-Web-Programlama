using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication4
{
    public partial class YemekDuzenle : System.Web.UI.Page
    {
        sqlSinifi bgl = new sqlSinifi();
        string productID = "";
        //string id;

        protected void Page_Load(object sender, EventArgs e)
        {
            productID = Request.QueryString["productID"];
            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("Select ProductName From Product where productID= @p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", productID);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                    TextBox3.Text = dr[3].ToString();
                    TextBox4.Text = dr[4].ToString();
                }
                bgl.baglanti().Close();

                //KATEGORİ LİSTESİ
                SqlCommand komut2 = new SqlCommand("Select * From Category", bgl.baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();

                DropDownList1.DataTextField = "CategoryName";
                DropDownList1.DataValueField = "CategoryID";

                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();

               
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update Product set ProductName=@p1, Description=@p2, Stock=@p3, UnitPrice=@p4, CategoryID=@p5 where ProductID=@p6", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", TextBox4.Text);
            komut.Parameters.AddWithValue("@p5", DropDownList1.SelectedValue);
            komut.Parameters.AddWithValue("@p6", productID);

            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}