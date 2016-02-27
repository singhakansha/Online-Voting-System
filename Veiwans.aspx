<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Veiwans.aspx.cs" Inherits="Veiwans" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 559px;
            border: 2px solid #009900;
        }
        .auto-style2 {
            height: 60px;
        }
        .auto-style3 {
            height: 39px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-image: url('image/imagesCARZA2NF.jpg')">
    
        <table cellpadding="2" class="auto-style1">
            <tr>
                <td class="auto-style2" style="font-family: &quot;Courier New&quot;, Courier, monospace; font-size: 20px; font-weight: bolder; font-style: normal; color: #003366">
                    <asp:Label ID="Label1" runat="server" Text="Enter Voter Id"></asp:Label>
                </td>
                <td class="auto-style2" style="font-family: &quot;Courier New&quot;, Courier, monospace; font-size: 20px; font-weight: bolder; font-style: normal; color: #003366">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="font-family: 'Courier New', Courier, monospace; font-size: 20px; font-weight: bolder; font-style: normal; color: #003366">
                    <asp:Label ID="Label2" runat="server" Text="Enter Candidate id"></asp:Label>
                </td>
                <td class="auto-style2" style="font-family: 'Courier New', Courier, monospace; font-size: 20px; font-weight: bolder; font-style: normal; color: #003366">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" colspan="2">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Veiw" BackColor="Aqua" Font-Bold="True" Font-Names="Comic Sans MS" ForeColor="#003366" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" AutoGenerateColumns="False">
                        <Columns>
                            <asp:BoundField DataField="Question" HeaderText="Question" />
                            <asp:BoundField DataField="Answer" HeaderText="Answer" />
                        </Columns>
                        <FooterStyle BackColor="White" ForeColor="#333333" />
                        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="White" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#487575" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#275353" />
                    </asp:GridView>
                    <br />
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Return" BackColor="Aqua" Font-Bold="True" Font-Names="Comic Sans MS" ForeColor="#003366" />
                    </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
