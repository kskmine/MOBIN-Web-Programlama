using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication4
{
    public partial class KullaniciEkle : System.Web.UI.Page
    {
        sqlSinifi bgl = new sqlSinifi();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            SqlCommand cmd = new SqlCommand("Insert into KullaniciKayit(KADI, ADI, SOYADI, EPOSTA, SIFRE) VALUES ('"+txtKullanici.Text+"','"+txtAdi.Text+"','"+txtSoyadi.Text+"','"+txtEposta.Text + "','"+txtSifre.Text+"')", bgl.baglanti());
            cmd.ExecuteNonQuery();
        }
    }
}