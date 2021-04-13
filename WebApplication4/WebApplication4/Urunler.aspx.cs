using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication4
{
    public partial class Urunler : System.Web.UI.Page
    {
        sqlSinifi bgl = new sqlSinifi();
        string id = "";
        string islem = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["ProductID"];
                islem = Request.QueryString["islem"];
            }
            //ÜRÜN LİSTESİ
            SqlCommand komut = new SqlCommand("Select * From Product", bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();

            if (Page.IsPostBack==false)
            {
                //KATEGORİ LİSTESİ
                SqlCommand komut2 = new SqlCommand("Select * From Category", bgl.baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();

                DropDownList1.DataTextField = "CategoryName";
                DropDownList1.DataValueField = "CategoryID";

                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();
            }

          

            //SİLME İŞLEMİ
            if (islem == "sil")
            {
                SqlCommand komutSil = new SqlCommand("delete from Product where ProductID=@p1", bgl.baglanti());
                komutSil.Parameters.AddWithValue("@p1", id);
                komutSil.ExecuteNonQuery();
                bgl.baglanti().Close();
            }

            Panel2.Visible = false;
            Panel4.Visible = false;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void btnEkle_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Product (ProductName, Description, Stock, UnitPrice,CategoryID) values (@p1, @p2, @p3, @p4, @p5)", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", TextBox4.Text);
            komut.Parameters.AddWithValue("@p5", DropDownList1.SelectedValue);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}