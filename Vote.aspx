<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Vote.aspx.cs" Inherits="Vote" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 118%;
            height: 484px;
            border-color: #33CC33;
        }
        .auto-style3 {
            width: 289px;
        }
        .auto-style4 {
            width: 304px;
        }
        .auto-style6 {
            width: 289px;
            height: 101px;
        }
        .auto-style7 {
            width: 304px;
            height: 101px;
        }
        .auto-style8 {
            height: 101px;
        }
        .auto-style9 {
            width: 311px;
            height: 101px;
        }
        .auto-style10 {
            width: 311px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table cellpadding="2" class="auto-style1" style="background-image: url('image/ballot-box-general-election-2014-620x412.jpg')">
            <tr>
                <td colspan="4" style="background-image: url('image/imagesCARZA2NF.jpg'); font-family: &quot;Comic Sans MS&quot;; font-size: x-large; font-weight: bold; color: #000080">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;ONLINE NATIONAL POLLING SYSTEM</td>
            </tr>
            <tr>
                <td class="auto-style9" style="font-size: large; font-weight: bold; background-image: url('image/sada.jpg'); color: #FFFF00;">Candidate Name</td>
                <td class="auto-style6" style="font-size: large; font-weight: bold; background-image: url('image/sada.jpg'); color: #FFFF00;">Party</td>
                <td class="auto-style7" style="font-size: large; font-weight: bold; background-image: url('image/sada.jpg'); color: #FFFF00;">Candidate id</td>
                <td style="font-size: large; font-weight: bold; background-image: url('image/sada.jpg'); color: #FFFF00;" class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style10" style="background-image: url('image/sada.jpg'); color: #FFFF00; font-weight: bold; font-size: medium;">
                    <asp:Label ID="Label1" runat="server" Text="Narendra Modi" Font-Bold="True" ForeColor="Yellow"></asp:Label>
                </td>
                <td class="auto-style3" style="background-image: url('image/sada.jpg'); color: #FFFF00; font-weight: bold; font-size: medium;">
                    <asp:Label ID="Label4" runat="server" Text="BJP" Font-Bold="True" ForeColor="Yellow"></asp:Label>
                </td>
                <td class="auto-style4" style="background-image: url('image/sada.jpg'); color: #FFFF00; font-weight: bold; font-size: medium;">
                    <asp:Label ID="Label7" runat="server" Text="1" Font-Bold="True" Font-Size="XX-Large" ForeColor="Yellow"></asp:Label>
                </td>
                <td style="background-image: url('image/sada.jpg'); color: #FFFF00; font-weight: bold; font-size: medium;">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Vote" BackColor="Red" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="Medium" Font-Underline="True" ForeColor="White" Height="45px" Width="103px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style10" style="background-image: url('image/sada.jpg'); color: #FFFF00; font-weight: bold; font-size: medium;">
                    <asp:Label ID="Label2" runat="server" Text="Rahul Gandhi" Font-Bold="True" ForeColor="Yellow"></asp:Label>
                </td>
                <td class="auto-style3" style="background-image: url('image/sada.jpg'); color: #FFFF00; font-weight: bold; font-size: medium;">
                    <asp:Label ID="Label5" runat="server" Text="CONGRESS" Font-Bold="True" ForeColor="Yellow"></asp:Label>
                </td>
                <td class="auto-style4" style="background-image: url('image/sada.jpg'); color: #FFFF00; font-weight: bold; font-size: medium;">
                    <asp:Label ID="Label8" runat="server" Text="2" Font-Bold="True" Font-Size="XX-Large" ForeColor="Yellow"></asp:Label>
                </td>
                <td style="background-image: url('image/sada.jpg'); color: #FFFF00; font-weight: bold; font-size: medium;">
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Vote" BackColor="Red" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="Medium" Font-Underline="True" ForeColor="White" Height="48px" Width="102px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style10" style="background-image: url('image/sada.jpg'); color: #FFFF00; font-weight: bold; font-size: medium;">
                    <asp:Label ID="Label3" runat="server" Text="Arvind Kejriwal" Font-Bold="True" ForeColor="Yellow"></asp:Label>
                </td>
                <td class="auto-style3" style="background-image: url('image/sada.jpg'); color: #FFFF00; font-weight: bold; font-size: medium;">
                    <asp:Label ID="Label6" runat="server" Text="AAP" Font-Bold="True" ForeColor="Yellow"></asp:Label>
                </td>
                <td class="auto-style4" style="background-image: url('image/sada.jpg'); color: #FFFF00; font-weight: bold; font-size: medium;">
                    <asp:Label ID="Label9" runat="server" Text="3" Font-Bold="True" Font-Overline="False" Font-Size="XX-Large" ForeColor="Yellow"></asp:Label>
                </td>
                <td style="background-image: url('image/sada.jpg'); color: #FFFF00; font-weight: bold; font-size: medium;">
                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Vote" BackColor="Red" Font-Bold="True" Font-Names="Comic Sans MS" Font-Size="Medium" Font-Underline="True" ForeColor="White" Height="50px" Width="102px" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
