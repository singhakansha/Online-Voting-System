<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 101%;
            height: 506px;
        }
        .auto-style3 {
            height: 78px;
        }
        .auto-style4 {
            height: 33px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-image: url('image/637.gif')">
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style3" style="font-family: 'Courier New', Courier, monospace; font-size: 32px; font-weight: bolder; font-style: normal; color: #003366">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Online National Polling Site</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Menu ID="Menu1" runat="server" BackColor="#FFFBD6" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" Height="26px" Orientation="Horizontal" RenderingMode="Table" StaticSubMenuIndent="10px" Width="883px">
                        <DynamicHoverStyle BackColor="#990000" ForeColor="White" />
                        <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                        <DynamicMenuStyle BackColor="#FFFBD6" />
                        <DynamicSelectedStyle BackColor="#FFCC66" />
                        <Items>
                            <asp:MenuItem NavigateUrl="~/Default2.aspx" Text="Voter's Profile" Value="Voter's Profile"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/c_reg_def.aspx" Text="Candidate's Profile" Value="Candidate's Profile"></asp:MenuItem>
                            <asp:MenuItem Text="Counting Pole" Value="Counting Pole" NavigateUrl="~/CountPolls.aspx"></asp:MenuItem>
                        </Items>
                        <StaticHoverStyle BackColor="#990000" ForeColor="White" />
                        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                        <StaticSelectedStyle BackColor="#FFCC66" />
                    </asp:Menu>
                </td>
            </tr>
            <tr>
                <td></td>
            </tr>
        </table>
    
        <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/image/637.gif" Height="668px" Width="1436px">
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
