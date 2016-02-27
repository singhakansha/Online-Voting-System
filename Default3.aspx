<%@ Page Title="" Language="C#" MasterPageFile="~/Voter_pro.master" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    #Submit1 {
        width: 87px;
    }
    #Reset1 {
        width: 74px;
    }
    .auto-style17 {
        height: 31px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1" style="font-family: 'Comic Sans MS'; background-image: url('image/f68d3_20144774811660734_21.jpg');">
    <tr>
        <td colspan="2" style="color: #003300">
            <asp:Label ID="Label21" runat="server" Font-Bold="True" Font-Names="Comic Sans MS" Font-Underline="True" ForeColor="Red" Text="Registration Form"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style17" style="color: #003300">
            <asp:Label ID="Label4" runat="server" Text="Voter_id"></asp:Label>
        </td>
        <td class="auto-style17">
           
            <asp:TextBox ID="TextBox20" runat="server"></asp:TextBox>
           
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox20" ErrorMessage="Name Required" ForeColor="Red">*</asp:RequiredFieldValidator>
           
        </td>
    </tr>
    <tr>
        <td style="color: #003300">
            <asp:Label ID="Label5" runat="server" Text="First_name"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="color: #003300">
            <asp:Label ID="Label6" runat="server" Text="Last_name"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox5" ErrorMessage="Name Required" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="color: #003300">
            <asp:Label ID="Label7" runat="server" Text="Father_name"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox6" ErrorMessage="Father name" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="color: #003300">
            <asp:Label ID="Label8" runat="server" Text="DOB"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox7" ErrorMessage="DOB" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="color: #003300">
            State</td>
        <td>
            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox8" ErrorMessage="State " ForeColor="#CC0000">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="color: #003300">
            <asp:Label ID="Label10" runat="server" Text="City"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox9" ErrorMessage="City" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="color: #003300">
            <asp:Label ID="Label11" runat="server" Text="Address"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox10" ErrorMessage="Address" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="color: #003300">
            <asp:Label ID="Label12" runat="server" Text="E_mail"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox11" ErrorMessage="E_mail" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td style="color: #003300">
            <asp:Label ID="Label13" runat="server" Text="Contact_no"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox12" ErrorMessage="Contactno" ForeColor="#CC0000" MaximumValue="10" MinimumValue="10">*</asp:RangeValidator>
        </td>
    </tr>
    <tr>
        <td style="color: #003300">
            <asp:Label ID="Label14" runat="server" Text="Pincode"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="TextBox13" ErrorMessage="Pincode" ForeColor="#CC0000" MaximumValue="6" MinimumValue="6">*</asp:RangeValidator>
        </td>
    </tr>
    <tr>
        <td style="color: #003300">
            <asp:Label ID="Label15" runat="server" Text="User_name"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox14" ErrorMessage="User_name" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="color: #003300">
            <asp:Label ID="Label16" runat="server" Text="Password"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox15" ErrorMessage="Password" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="color: #003300">
            <asp:Label ID="Label17" runat="server" Text="Role"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox16" ErrorMessage="Role" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="color: #003300">
            <asp:Label ID="Label18" runat="server" Text="V_photo"></asp:Label>
        </td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="FileUpload1" ErrorMessage="Photo" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Button ID="Button2" runat="server" BackColor="Aqua" Font-Bold="True" Font-Names="Comic Sans MS" ForeColor="#FFFFCC" OnClick="Button2_Click" Text="SUBMIT" Width="81px" CausesValidation="False" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" BackColor="Aqua" Font-Bold="True" Font-Names="Comic Sans MS" ForeColor="White" Text="RESET" Width="76px" CausesValidation="False" />
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        </td>
    </tr>
</table>
</asp:Content>

