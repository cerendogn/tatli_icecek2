using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace tatli_icecek2
{
    
   
    public partial class TatliDetay : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string TatliID = "";
        
        protected void Page_Load(object sender, EventArgs e)
        {
            TatliID = Request.QueryString["TatliID"];
            SqlCommand komut = new SqlCommand("Select TatliAd From Tbl_Tatlilar where TatliID=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TatliID);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                Label10.Text = dr[0].ToString();
            }
            bgl.baglanti().Close();

            //Yorumları Listeleme
            SqlCommand komut2 = new SqlCommand("Select * From Tbl_Yorum where TatliID=@p2",bgl.baglanti());
            komut2.Parameters.AddWithValue("@p2", TatliID);
            SqlDataReader dr2 = komut2.ExecuteReader();
            DataList3.DataSource = dr2;
            DataList3.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Tbl_Yorum (YorumAdSoyad,YorumMail,Yorumicerik,TatliID) values (@p1,@p2,@p3,@p4)", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", TatliID);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();


        }
    }
}