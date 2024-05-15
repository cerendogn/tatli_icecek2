<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="HakkimizdaAdmin.aspx.cs" Inherits="tatli_icecek2.HakkimizdaAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">




        .auto-style9 {
            background-color: #CCFFFF;
        }
        .auto-style15 {
            width: 36px;
        height: 34px;
    }
        .auto-style14 {
            font-weight: bold;
            font-size: large;
        }
        .auto-style16 {
            width: 45px;
        height: 34px;
    }
        .auto-style20 {
        height: 34px;
    }
        .auto-style21 {
        font-weight: bold;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style9">
        <table class="auto-style7">
            <tr>
                <td class="auto-style15"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style14" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click"/>
                    </strong></td>
                <td class="auto-style16"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style14" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click"/>
                    </strong></td>
                <td class="auto-style20">HAKKIMIZDA</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel runat="server">
        <table class="auto-style7">
            <tr>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="200px" TextMode="MultiLine" Width="434px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style21" Text="Güncelle" Width="200px" OnClick="Button3_Click" />
                    </strong></td>
            </tr>
        </table>
</asp:Panel>
</asp:Content>
