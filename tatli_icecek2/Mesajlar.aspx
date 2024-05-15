<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Mesajlar.aspx.cs" Inherits="tatli_icecek2.Mesajlar" %>
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
                <td class="auto-style20">MESAJ LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
            <asp:DataList ID="DataList1" runat="server" Width="444px">
                <ItemTemplate>
                    <table class="auto-style7">
                        <tr>
                            <td class="auto-style10">
                                <asp:Label ID="Label1" runat="server" CssClass="auto-style13" Text='<%# Eval("MesajGonderen") %>'></asp:Label>
                            </td>
                            <td class="auto-style21">
                               <a href="MesajDetay.aspx?MesajID=<%#Eval("MesajID")%>"><asp:Image ID="Image5" runat="server" CssClass="auto-style8" Height="30px" ImageUrl="~/ikonlar/read-message-2017068-1701888.png" Width="30px" /></a>
                                </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
    </asp:Panel>
</asp:Content>
