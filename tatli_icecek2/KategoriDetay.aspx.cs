using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace tatli_icecek2
{
    public partial class KategoriDetay : System.Web.UI.Page
    {
        sqlsinif snf = new sqlsinif();
        string KategoriID = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            KategoriID = Request.QueryString["KategoriID"];
            SqlCommand komut = new SqlCommand("Select * From Tbl_Tatlilar where KategoriID=@p1", snf.baglanti());
            komut.Parameters.AddWithValue("@p1", KategoriID);
            SqlDataReader dr = komut.ExecuteReader();
            DataList3.DataSource = dr;
            DataList3.DataBind();
        }
    }
}