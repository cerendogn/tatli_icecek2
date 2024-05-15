<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Kategoriler.aspx.cs" Inherits="tatli_icecek2.Kategoriler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            background-color: #CCFFFF;
        }
    .auto-style10 {
        text-align: left;
        width: 241px;
        height: 34px;
    }
    .auto-style11 {
        text-align: right;
        height: 34px;
    }
    .auto-style12 {
        text-align: right;
        width: 88px;
        height: 34px;
    }
    .auto-style13 {
        font-size: large;
    }
        .auto-style14 {
            font-weight: bold;
            font-size: large;
        }
        .auto-style15 {
            width: 36px;
        height: 34px;
    }
        .auto-style16 {
            width: 44px;
        height: 34px;
    }
        .auto-style17 {
            width: 40px;
        }
        .auto-style18 {
            width: 35px;
        }
        .auto-style19 {
            border: 2px solid #777;
            border-radius: 10px;
            outline: none;
            font-weight: bold;
        }
    .auto-style20 {
        height: 34px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style9">
        <table class="auto-style7">
            <tr>
                <td class="auto-style15"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style14" Height="30px" OnClick="Button1_Click" Text="+" Width="30px" />
                    </strong></td>
                <td class="auto-style16"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style14" Height="30px" OnClick="Button2_Click" Text="-" Width="30px" />
                    </strong></td>
                <td class="auto-style20">KATEGORİ LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="444px">
            <ItemTemplate>
                <table class="auto-style7">
                    <tr>
                        <td class="auto-style10">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style13" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style12">
                           <a href="Kategoriler.aspx?KategoriID=<%#Eval("KategoriID")%>&islem=sil"> <asp:Image ID="Image4" runat="server" CssClass="auto-style8" Height="30px" ImageUrl="~/ikonlar/401036.png" Width="30px" /></a>
                        </td>
                        <td class="auto-style11">
                           <a href="KategoriDuzenle.aspx?KategoriID=<%#Eval("KategoriID") %>"> <asp:Image ID="Image5" runat="server" CssClass="auto-style8" Height="30px" ImageUrl="~/ikonlar/update-icon-png-18.jpg" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style9">
        <table class="auto-style7">
            <tr>
                <td class="auto-style18"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style14" Height="30px"  Text="+" Width="30px" OnClick="Button3_Click1" />
                    </strong></td>
                <td class="auto-style17"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style14" Height="30px"  Text="-" Width="30px" OnClick="Button4_Click" />
                    </strong></td>
                <td>KATEGORİ EKLEME</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style7">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Kategori Ad:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Kategori İkon:</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><strong>
                    <asp:Button ID="BtnEkle" runat="server" BackColor="#000099" CssClass="auto-style19" ForeColor="White" OnClick="BtnEkle_Click" Text="Ekle" Width="129px" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
