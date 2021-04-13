using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace WebApplication4
{
    public class sqlSinifi
    {
        public SqlConnection baglanti()
        {
            SqlConnection baglan = new SqlConnection(@"Data Source=DESKTOP-CRD6MHF\SQLEXPRESS;Initial Catalog=WebProje;Integrated Security=True");
            baglan.Open();
            return baglan;
        }
    }
}

 