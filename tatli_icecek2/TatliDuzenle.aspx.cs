using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace tatli_icecek2
{
    public partial class TatliDuzenle : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id;

        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["TatliID"];

            if (Page.IsPostBack == false)
            {

                SqlCommand komut = new SqlCommand("Select * From Tbl_Tatlilar where TatliID=@p1",bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                    TextBox3.Text = dr[3].ToString();
                }
                bgl.baglanti().Close();


                if (Page.IsPostBack == false)
                {
                    //Kategori Listesi
                    SqlCommand komut2 = new SqlCommand("Select * From Tbl_Kategori", bgl.baglanti());
                    SqlDataReader dr2 = komut2.ExecuteReader();

                    DropDownList1.DataTextField = "KategoriAd";
                    DropDownList1.DataValueField = "KategoriID";

                    DropDownList1.DataSource = dr2;
                    DropDownList1.DataBind();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath("/resimler/" + FileUpload1.FileName));
            
            SqlCommand komut = new SqlCommand("update Tbl_Tatlilar set TatliAd=@p1, TatliMalzeme=@p2, TatliTarif=@p3, KategoriID=@p4, TatliResim=@p5 where TatliID=@p5", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut.Parameters.AddWithValue("@p6", "~/resimler/" + FileUpload1.FileName);
            komut.Parameters.AddWithValue("@p5", id);
            
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //Tüm tatlıların durumunu false yaptık
            SqlCommand komut = new SqlCommand("update tbl_Tatlilar set Durum=0", bgl.baglanti());
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

            //günün tatlısı için id'ye göre durumu true yapalım
            SqlCommand komut2 = new SqlCommand("update Tbl_Tatlilar set Durum=1 where TatliID=@p1", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", id);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}