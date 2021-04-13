using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication4
{
    public partial class kullanici : System.Web.UI.MasterPage
    {
        sqlSinifi bgl = new sqlSinifi();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Select * From Category",bgl.baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            DataList1.DataSource = oku;
            DataList1.DataBind();

           


        }

        protected void tblGiris_Click(object sender, EventArgs e)
        {
          
            SqlCommand komut = new SqlCommand("Select * From KullaniciKayit where KADI= '"+TxtKullanici.Text+ "' and SIFRE= '"+TxtSifre.Text+"'", bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader();

            if (dr.Read())
            {
                Session["ADI"] = dr["ADI"].ToString();
                Response.Redirect("AnaSayfa.aspx");
            }

            else
            {
                Response.Redirect("Hatalı kullanıcı girişi");
            }
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }
    }
}