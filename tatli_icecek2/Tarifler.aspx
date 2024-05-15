<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Tarifler.aspx.cs" Inherits="tatli_icecek2.Tarifler" %>
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
            text-align: right;
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
                <td class="auto-style20">ONAYSIZ TARİF LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
            <asp:DataList ID="DataList1" runat="server" Width="447px">
                <ItemTemplate>
                    <table class="auto-style7">
                        <tr>
                            <td class="auto-style10">
                                <asp:Label ID="Label1" runat="server" CssClass="auto-style13" Text='<%# Eval("TatliTarifAd") %>'></asp:Label>
                            </td>
                            <td class="auto-style21">
                              <a href="TarifOnerDetay.aspx?TatliTarifID=<%#Eval("TatliTarifID")%>"> <asp:Image ID="Image5" runat="server" CssClass="auto-style8" Height="30px" ImageUrl="~/ikonlar/oneri.png" Width="30px" /></a>
                                </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList></asp:Panel>
            <asp:Panel ID="Panel3" runat="server" CssClass="auto-style9">
                <table class="auto-style7">
                    <tr>
                        <td class="auto-style15"><strong>
                            <asp:Button ID="Button3" runat="server" CssClass="auto-style14" Height="30px" Text="+" Width="30px" OnClick="Button3_Click" />
                            </strong></td>
                        <td class="auto-style16"><strong>
                            <asp:Button ID="Button4" runat="server" CssClass="auto-style14" Height="30px" Text="-" Width="30px" OnClick="Button4_Click" />
                            </strong></td>
                        <td class="auto-style20">ONAYLI TARİF LİSTESİ</td>
                    </tr>
                </table>
            </asp:Panel>
    
    <asp:Panel ID="Panel4" runat="server">
            <asp:DataList ID="DataList2" runat="server" Width="447px">
                <ItemTemplate>
                    <table class="auto-style7">
                        <tr>
                            <td class="auto-style10">
                                <asp:Label ID="Label1" runat="server" CssClass="auto-style13" Text='<%# Eval("TatliTarifAd") %>'></asp:Label>
                            </td>
                            <td class="auto-style21">
                              <a href="TarifOnerDetay.aspx?TatliTarifID=<%#Eval("TatliTarifID")%>"> <asp:Image ID="Image5" runat="server" CssClass="auto-style8" Height="30px" ImageUrl="~/ikonlar/oneri.png" Width="30px" /></a>
                                </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList></asp:Panel>
</asp:Content>
