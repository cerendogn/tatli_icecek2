using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace tatli_icecek2
{
    public partial class YorumDetay : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["YorumID"];

            if (Page.IsPostBack == false)
            {

            }

            SqlCommand komut = new SqlCommand("Select YorumAdSoyad, YorumMail,Yorumicerik,TatliAd From Tbl_Yorum inner join Tbl_Tatlilar on Tbl_Yorum.TatliID=Tbl_Tatlilar.TatliID where YorumID=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                TxtAd.Text = dr[0].ToString();
                TxtMail.Text = dr[1].ToString();
                TxtYorum.Text = dr[2].ToString();
                TxtTatli.Text = dr[3].ToString();
            }
            bgl.baglanti().Close();
        }

        protected void BtnOnayla_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Update Tbl_Yorum set Yorumicerik=@p1,YorumOnay=@p2 where YorumID=@p3", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TxtYorum);
            komut.Parameters.AddWithValue("@p2", "True");
            komut.Parameters.AddWithValue("@p3",id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

        }
    }
}