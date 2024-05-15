using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace tatli_icecek2
{
    public class sqlsinif
    {
        public SqlConnection baglanti()
        {
            SqlConnection baglan = new SqlConnection(@"Data source=ASUS\SQLEXPRESS;Initial Catalog=tarifler;Integrated Security=True");
                baglan.Open();
                return baglan;
        }
    }

}