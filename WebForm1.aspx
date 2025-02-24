<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="checkout6.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 66%;
            height: 143px;
            margin-left: 187px;
            background-color: #66FF33;
        }
        .auto-style3 {
            height: 27px;
            width: 28px;
            text-align: right;
        }
        .auto-style4 {
            height: 23px;
            width: 28px;
        }
        .auto-style5 {
            height: 27px;
            width: 116px;
        }
        .auto-style6 {
            width: 116px;
            height: 17px;
        }
        .auto-style7 {
            height: 23px;
            width: 116px;
        }
        .auto-style8 {
            height: 17px;
            width: 28px;
        }
        .auto-style9 {
            height: 6px;
            width: 28px;
        }
        .auto-style10 {
            height: 6px;
            width: 116px;
        }
        .auto-style11 {
            height: 23px;
            width: 28px;
            text-align: right;
        }
        .auto-style12 {
            margin-left: 320px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style2">
            <tr>
                <td class="auto-style3">Name:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">Email :</td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8"></td>
                <td class="auto-style6">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="submit" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style7"></td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style10"></td>
            </tr>
        </table>
    
    </div>
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:adsConnectionString %>" SelectCommand="SELECT * FROM [tabledetails]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style12" DataKeyNames="id" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="name1" HeaderText="name1" SortExpression="name1" />
                <asp:BoundField DataField="email1" HeaderText="email1" SortExpression="email1" />
            </Columns>
        </asp:GridView>
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
        
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:adsConnectionString %>" SelectCommand="SELECT * FROM [tabledetails]"></asp:SqlDataSource>
        
    </form>
</body>
</html>
