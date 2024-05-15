<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="tatli_icecek2.Yorumlar" %>
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
            width: 44px;
        height: 34px;
    }
        .auto-style20 {
        height: 34px;
    }
    .auto-style10 {
        text-align: left;
        width: 241px;
        height: 34px;
    }
    .auto-style13 {
        font-size: large;
    }
        .auto-style12 {
        text-align: right;
        width: 88px;
        height: 34px;
    }
    .auto-style11 {
        text-align: right;
        height: 34px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style9">
        <table class="auto-style7">
            <tr>
                <td class="auto-style15"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style14" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click1" />
                    </strong></td>
                <td class="auto-style16"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style14" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click" />
                    </strong></td>
                <td class="auto-style20">ONAYLANAN YORUM LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
        <asp:Panel ID="Panel2" runat="server">
            <asp:DataList ID="DataList1" runat="server" Width="444px">
                <ItemTemplate>
                    <table class="auto-style7">
                        <tr>
                            <td class="auto-style10">
                                <asp:Label ID="Label1" runat="server" CssClass="auto-style13" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                            </td>
                            <td class="auto-style12">
                                <asp:Image ID="Image4" runat="server" CssClass="auto-style8" Height="30px" ImageUrl="~/ikonlar/401036.png" Width="30px" />
                                </td>
                            <td class="auto-style11">
                                <asp:Image ID="Image5" runat="server" CssClass="auto-style8" Height="30px" ImageUrl="~/ikonlar/update-icon-png-18.jpg" Width="30px" />
                                </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style9">
        <table class="auto-style7">
            <tr>
                <td class="auto-style15"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style14" Height="30px"  Text="+" Width="30px" OnClick="Button3_Click"/>
                    </strong></td>
                <td class="auto-style16"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style14" Height="30px"  Text="-" Width="30px" OnClick="Button4_Click"/>
                    </strong></td>
                <td class="auto-style20">ONAYSIZ YORUM LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>

<asp:Panel ID="Panel4" runat="server">
            <asp:DataList ID="DataList2" runat="server" Width="444px">
                <ItemTemplate>
                    <table class="auto-style7">
                        <tr>
                            <td class="auto-style10">
                                <asp:Label ID="Label1" runat="server" CssClass="auto-style13" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                            </td>
                            <td class="auto-style12">
                                <asp:Image ID="Image4" runat="server" CssClass="auto-style8" Height="30px" ImageUrl="~/ikonlar/401036.png" Width="30px" />
                                </td>
                            <td class="auto-style11">
                              <a href="YorumDetay.aspx?YprumID=<%#Eval("YorumID")%>">  <asp:Image ID="Image5" runat="server" CssClass="auto-style8" Height="30px" ImageUrl="~/ikonlar/update-icon-png-18.jpg" Width="30px" /></a>
                                </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
    </asp:Panel>
</asp:Content>
