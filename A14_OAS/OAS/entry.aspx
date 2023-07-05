<%@ Page Language="C#" AutoEventWireup="true" CodeFile="entry.aspx.cs" Inherits="entry" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 202px;
            width: 275px;
        }
        .auto-style2 {
            height: 85px;
            width: 275px;
        }
        .auto-style3 {
            height: 74px;
            width: 275px;
        }
        .auto-style4 {
            height: 77px;
            width: 275px;
        }
        .auto-style5 {
            height: 77px;
            width: 351px;
        }
        .auto-style6 {
            height: 74px;
            width: 351px;
        }
        .auto-style7 {
            height: 202px;
            width: 351px;
        }
        .auto-style8 {
            height: 85px;
            width: 351px;
        }
        .auto-style9 {
            width: 351px;
        }
        .auto-style10 {
            width: 275px;
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
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Attendance Entry"></asp:Label>
            <br />
            <br />
            <br />
           
            <table style="width: 43%; height: 838px;" border="1" align="center">
                <tr align="center">
                    <td class="auto-style4">
                        <asp:Label ID="Label3" runat="server" Text="Select Class"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>TYBTech_A</asp:ListItem>
                            <asp:ListItem>TYBTech_B</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr align="center">
                    <td class="auto-style3">
                        <asp:Label ID="Label4" runat="server" Text="Select Subject"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:DropDownList ID="DropDownList2" runat="server">
                            <asp:ListItem>CC</asp:ListItem>
                            <asp:ListItem>OSII</asp:ListItem>
                            <asp:ListItem>DBE</asp:ListItem>
                            <asp:ListItem>ML</asp:ListItem>
                            <asp:ListItem>OEC</asp:ListItem>
                            <asp:ListItem>PLIV</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr align="center">
                    <td class="auto-style1">
                        <asp:Label ID="Label6" runat="server" Text="Select Date"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px">
                            <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                            <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                            <OtherMonthDayStyle ForeColor="#CC9966" />
                            <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                            <SelectorStyle BackColor="#FFCC66" />
                            <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                            <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                        </asp:Calendar>
                    </td>
                </tr>
                <tr align="center">
                    <td class="auto-style2">
                        <asp:Label ID="Label9" runat="server" Text="Select Time Slot"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:DropDownList ID="DropDownList3" runat="server">
                            <asp:ListItem>9 - 10</asp:ListItem>
                            <asp:ListItem>10 - 11</asp:ListItem>
                            <asp:ListItem>11.15 - 12.15</asp:ListItem>
                            <asp:ListItem>12.15 - 1.15</asp:ListItem>
                            <asp:ListItem>2.15 - 3.15</asp:ListItem>
                            <asp:ListItem>3.15 - 4.15</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr align="center">
                    <td class="auto-style2">
                        <asp:Label ID="Label7" runat="server" Text="Select Mode"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem>Absent</asp:ListItem>
                            <asp:ListItem>Present</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr align="center">
                    <td class="auto-style10">
                        <asp:Label ID="Label8" runat="server" Text="Enter Roll Numbers"></asp:Label>
                    </td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr align="center">
                    <td class="auto-style10">
                        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Reset" />
                    </td>
                    <td class="auto-style9">
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Submit" />
                    </td>
                </tr>
            </table>
           
            <br />
            <br />
            <asp:Label ID="Label5" runat="server"></asp:Label>
            <br />
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
