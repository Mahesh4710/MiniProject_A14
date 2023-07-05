<%@ Page Language="C#" AutoEventWireup="true" CodeFile="classwise.aspx.cs" Inherits="classwise" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">


        .auto-style1 {
            height: 66px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Panel ID="Panel1" runat="server" BackColor="#FF99FF" HorizontalAlign="Center">
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Online Attendance System"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large">Class Wise Overall Attendance</asp:Label>
            <br />
            <br />
            <br />
            <center>
            <table style="width: 60%; height: 182px;" border="1">
                <tr align="center">
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Select Class"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>TYBTech_A</asp:ListItem>
                            <asp:ListItem>TYBTech_B</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr align="center">
                    <td class="auto-style1">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Reset" />
                    </td>
                    <td class="auto-style1">
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Submit" />
                    </td>
                </tr>
            </table>
                </center>
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" HorizontalAlign="Center" Visible="False">
            </asp:GridView>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
