<%@ Page Title="" Language="C#" MasterPageFile="~/candidate_reg.master" AutoEventWireup="true" CodeFile="Candidate_registration.aspx.cs" Inherits="Candidate_registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style12 {
        width: 607px;
        border: 2px solid #006600;
    }
    .auto-style13 {
        }
    .auto-style14 {
        width: 295px;
        height: 27px;
    }
    .auto-style15 {
        height: 27px;
        width: 451px;
    }
    .auto-style16 {
        width: 451px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div align="center" style="background-image: url('image/f68d3_20144774811660734_21.jpg')">
    <table cellpadding="2" class="auto-style12" width="100%" height="100%" style="border-style: hidden; font-family: 'Comic Sans MS'; font-size: 15px; color: #FF0000;">
    <tr>
        <td colspan="2" style="border-style: none; border-color: #FFFFFF; font-family: 'Comic Sans MS'; font-size: 20px; font-weight: bolder; font-style: normal; color: #0033CC; ">Registration Form</td>
    </tr>
    <tr>
        <td class="auto-style13" style="font-family: 'Comic Sans MS'; font-size: 15px; font-weight: bolder; color: #000000; font-style: normal;">
            <asp:Label ID="Label18" runat="server" Text="C_id"></asp:Label>
        </td>
        <td class="auto-style16" style="font-family: 'Comic Sans MS'; font-size: 15px; font-weight: bold; color: #0033CC; font-style: normal;">
            <asp:TextBox ID="TextBox33" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox33" ErrorMessage="id required"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style13" style="font-family: 'Comic Sans MS'; font-size: 15px; font-weight: bolder; color: #000000; font-style: normal;">
            <asp:Label ID="Label19" runat="server" Text="Firstname"></asp:Label>
        </td>
        <td class="auto-style16" style="font-family: 'Comic Sans MS'; font-size: 15px; font-weight: bold; color: #0033CC; font-style: normal;">
            <asp:TextBox ID="TextBox34" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="TextBox34" ErrorMessage="first name required"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style14" style="font-family: 'Comic Sans MS'; font-size: 15px; font-weight: bold; color: #0033CC; font-style: normal;">
            <asp:Label ID="Label20" runat="server" Text="Lastname"></asp:Label>
        </td>
        <td class="auto-style15" style="font-family: 'Comic Sans MS'; font-size: 15px; font-weight: bold; color: #0033CC; font-style: normal;">
            &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox35" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="TextBox35" ErrorMessage="Lastname required"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style13" style="font-family: 'Comic Sans MS'; font-size: 15px; font-weight: bold; color: #FF0000; font-style: normal;">
            <asp:Label ID="Label21" runat="server" Text="Fathername"></asp:Label>
        </td>
        <td class="auto-style16" style="font-family: 'Comic Sans MS'; font-size: 15px; font-weight: bold; color: #0033CC; font-style: normal;">
            <asp:TextBox ID="TextBox36" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="TextBox36" ErrorMessage="Father's name required"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style13" style="font-family: 'Comic Sans MS'; font-size: 15px; font-weight: bold; color: #0033CC; font-style: normal;">
            <asp:Label ID="Label22" runat="server" Text="DOB"></asp:Label>
        </td>
        <td class="auto-style16" style="font-family: 'Comic Sans MS'; font-size: 15px; font-weight: bold; color: #FF0000; font-style: normal;">
            <asp:TextBox ID="TextBox37" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="TextBox37" ErrorMessage="DOB Required"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style13" style="font-family: 'Comic Sans MS'; font-size: 15px; font-weight: bold; color: #0033CC; font-style: normal;">
            <asp:Label ID="Label23" runat="server" Text="State"></asp:Label>
        </td>
        <td class="auto-style16" style="font-family: 'Comic Sans MS'; font-size: 15px; font-weight: bold; color: #0033CC; font-style: normal;">
            <asp:TextBox ID="TextBox38" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="TextBox38" ErrorMessage="enter state"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style13" style="font-family: 'Comic Sans MS'; font-size: 15px; font-weight: bold; color: #0033CC; font-style: normal;">
            <asp:Label ID="Label24" runat="server" Text="City"></asp:Label>
        </td>
        <td class="auto-style16" style="font-family: 'Comic Sans MS'; font-size: 15px; font-weight: bold; color: #0033CC; font-style: normal;">
            <asp:TextBox ID="TextBox39" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="TextBox39" ErrorMessage="Enter city"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style13" style="font-family: 'Comic Sans MS'; font-size: 15px; font-weight: bold; color: #0033CC; font-style: normal;">
            <asp:Label ID="Label25" runat="server" Text="Party"></asp:Label>
        </td>
        <td class="auto-style16" style="font-family: 'Comic Sans MS'; font-size: 15px; font-weight: bold; color: #0033CC; font-style: normal;">
            <asp:TextBox ID="TextBox40" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="TextBox40" ErrorMessage="Enter Party"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style13" style="font-family: 'Comic Sans MS'; font-size: 15px; font-weight: bold; color: #0033CC; font-style: normal;">
            <asp:Label ID="Label27" runat="server" Text="Photo"></asp:Label>
        </td>
        <td class="auto-style16" style="font-family: 'Comic Sans MS'; font-size: 15px; font-weight: bold; color: #0033CC; font-style: normal;">
            <asp:FileUpload ID="FileUpload1" runat="server" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
    </tr>
    <tr>
        <td class="auto-style13" style="font-family: 'Comic Sans MS'; font-size: 15px; font-weight: bold; color: #0033CC; font-style: normal;">
            <asp:Label ID="Label28" runat="server" Text="Email"></asp:Label>
        </td>
        <td class="auto-style16" style="font-family: 'Comic Sans MS'; font-size: 15px; font-weight: bold; color: #0033CC; font-style: normal;">
            <asp:TextBox ID="TextBox42" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox42" ErrorMessage="Enter Email Id" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style13" style="font-family: 'Comic Sans MS'; font-size: 15px; font-weight: bold; color: #0033CC; font-style: normal;">
            <asp:Label ID="Label29" runat="server" Text="Address"></asp:Label>
        </td>
        <td class="auto-style16" style="font-family: 'Comic Sans MS'; font-size: 15px; font-weight: bold; color: #0033CC; font-style: normal;">
            <asp:TextBox ID="TextBox43" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ControlToValidate="TextBox43" ErrorMessage="Enter Address"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style13" style="font-family: 'Comic Sans MS'; font-size: 15px; font-weight: bold; color: #0033CC; font-style: normal;">
            <asp:Label ID="Label30" runat="server" Text="Contact"></asp:Label>
        </td>
        <td class="auto-style16" style="font-family: 'Comic Sans MS'; font-size: 15px; font-weight: bold; color: #0033CC; font-style: normal;">
            <asp:TextBox ID="TextBox44" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="TextBox44" ErrorMessage="Enter Contact"></asp:RangeValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style13" style="font-family: 'Comic Sans MS'; font-size: 15px; font-weight: bold; color: #0033CC; font-style: normal;">
            <asp:Label ID="Label31" runat="server" Text="Username"></asp:Label>
        </td>
        <td class="auto-style16" style="font-family: 'Comic Sans MS'; font-size: 15px; font-weight: bold; color: #0033CC; font-style: normal;">
            <asp:TextBox ID="TextBox45" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ControlToValidate="TextBox45" ErrorMessage="Enter Username"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style13" style="font-family: 'Comic Sans MS'; font-size: 15px; font-weight: bold; color: #0033CC; font-style: normal;">
            <asp:Label ID="Label32" runat="server" Text="Password"></asp:Label>
        </td>
        <td class="auto-style16" style="font-family: 'Comic Sans MS'; font-size: 15px; font-weight: bold; color: #0033CC; font-style: normal;">
            <asp:TextBox ID="TextBox46" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" ControlToValidate="TextBox46" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style13" style="font-family: 'Comic Sans MS'; font-size: 15px; font-weight: bold; color: #0033CC; font-style: normal;">
            <asp:Label ID="Label33" runat="server" Text="Election_reason"></asp:Label>
        </td>
        <td class="auto-style16" style="font-family: 'Comic Sans MS'; font-size: 15px; font-weight: bold; color: #0033CC; font-style: normal;">
            <asp:TextBox ID="TextBox47" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style13" style="font-family: 'Comic Sans MS'; font-size: 15px; font-weight: bold; color: #0033CC; font-style: normal;">
            Roles</td>
        <td class="auto-style16" style="font-family: 'Comic Sans MS'; font-size: 15px; font-weight: bold; color: #0033CC; font-style: normal;">
            <asp:TextBox ID="TextBox48" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style13" style="font-family: 'Comic Sans MS'; font-size: 15px; font-weight: bold; color: #0033CC; font-style: normal;" colspan="2">
            <asp:Button ID="Button2" runat="server" BackColor="#0033CC" Font-Bold="True" Font-Names="Comic Sans MS" Text="Submit" OnClick="Button2_Click" />
            &nbsp;&nbsp;&nbsp;<input id="Reset1" type="reset" value="reset" /></td>
    </tr>
    </table>
        </div>
</asp:Content>


