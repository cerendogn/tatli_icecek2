using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace tatli_icecek2
{
    public partial class Tatlilar : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();

        string islem = "";
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel4.Visible = false;

            if (Page.IsPostBack == false)
            {

                id = Request.QueryString["TatliID"];
                islem = Request.QueryString["islem"];

                //Kategori Listesi
                SqlCommand komut2 = new SqlCommand("Select * From Tbl_Kategori", bgl.baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();

                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "KategoriID";

                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();
            }
            
            //Tatlı Listesi
            SqlCommand komut = new SqlCommand("Select * From Tbl_Tatlilar", bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();

            if (islem == "sil")
            {
                SqlCommand komut2 = new SqlCommand("Delete From Tbl_Tatlilar where TatliID=@p1",bgl.baglanti());
                komut2.Parameters.AddWithValue("@p1", id);
                komut2.ExecuteNonQuery();
                bgl.baglanti().Close();

            }
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

        protected void BtnEkle_Click(object sender, EventArgs e)
        {

            //Yemek Ekleme
            SqlCommand komut = new SqlCommand("insert into Tbl_Tatlilar (TatliAd, TatliMalzeme, TatliTarif, KategoriID) values (@p1, @p2, @p3, @p4)", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox1.Text);
            komut.Parameters.AddWithValue("@p4", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();


            //Kategori Sayısını Artırma
            SqlCommand komut2 = new SqlCommand("update Tbl_Kategori set KategoriAdet=KategoriAdet+1 where KategoriID=@p1", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();


        }
    }
}