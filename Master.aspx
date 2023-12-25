<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Master.aspx.cs" Inherits="WebAppAssignment_11.Master" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title></title>
    <asp:ContentPlaceHolder ID="head" runat="server">
    </asp:ContentPlaceHolder>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td colspan="3"><h2>Welcome </h2></td>
                </tr>
                <tr>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Home.aspx">Home</asp:HyperLink>
                    </td>
                    <td>
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Article.aspx">Article</asp:HyperLink>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3"></td>
                </tr>
                </table>
            <asp:ContentPlaceHolder ID="ContentPlaceHolder1" runat="server">
            </asp:ContentPlaceHolder>
        </div>
    </form>
</body>
</html>>
