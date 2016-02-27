<%@ Page Title="" Language="C#" MasterPageFile="~/candidate_reg.master" AutoEventWireup="true" CodeFile="c_reg_def.aspx.cs" Inherits="c_reg_def" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" OnDeleteCommand="DataList1_DeleteCommand" OnEditCommand="DataList1_EditCommand" OnItemCommand="DataList1_ItemCommand" OnSelectedIndexChanged="Page_Load" OnUpdateCommand="DataList1_UpdateCommand">
        <HeaderTemplate>
             <table border="2">
                 <tr><td colspan="4">CANDIDATE</td></tr>
           
         </HeaderTemplate>
      <ItemTemplate>
             <tr><td>C_id</td>
                 <td>
                     <asp:Label ID="Label1" runat="server" Text='<%#Eval("C_id")%>'></asp:Label></td>
             <td>Firstname</td>
                 <td><asp:Label ID="Label2" runat="server" Text='<%#Eval("Firstname")%>'></asp:Label></td></tr>
         <tr><td>Lastname</td>
                 <td><asp:Label ID="Label3" runat="server" Text='<%#Eval("Lastname")%>'></asp:Label></td>
         <td>Fathername</td>
                 <td><asp:Label ID="Label4" runat="server" Text='<%#Eval("Fathername")%>'></asp:Label></td></tr>
             <tr><td>DOB</td>
                 <td>
                     <asp:Label ID="Label5" runat="server" Text='<%#Eval("DOB")%>'></asp:Label></td>
         <td>State</td>
                 <td>
                     <asp:Label ID="Label6" runat="server" Text='<%#Eval("State")%>'></asp:Label></td></tr>
                 <tr><td>City</td>
                 <td><asp:Label ID="Label7" runat="server" Text='<%#Eval("City")%>'></asp:Label></td>
                     <td>Party</td>
                     <td><asp:Label ID="Label8" runat="server" Text='<%#Eval("Party")%>'></asp:Label></td></tr>
             <tr><td>Email</td>
                 <td><asp:Label ID="Label11" runat="server" Text='<%#Eval("Email")%>'></asp:Label></td>
             <td>Address</td>
                 <td><asp:Label ID="Label12" runat="server" Text='<%#Eval("Address")%>'></asp:Label></td></tr>
             <tr><td>Contactno</td>
                 <td><asp:Label ID="Label13" runat="server" Text='<%#Eval("Contactno")%>'></asp:Label></td>
             <td>Username</td>
                 <td><asp:Label ID="Label14" runat="server" Text='<%#Eval("Username")%>'></asp:Label></td></tr>
             <tr><td>Password</td>
                 <td><asp:Label ID="Label15" runat="server" Text='<%#Eval("Password")%>'></asp:Label></td>
              <td>Election_reason</td>
                 <td>
                     <asp:Label ID="Label16" runat="server" Text='<%#Eval("Election_reason")%>'></asp:Label></td></tr>
          <tr><td>Roles</td>
              <td>
                  <asp:Label ID="Label9" runat="server" Text='<%#Eval("Roles")%>'></asp:Label></td>
          </tr>
                 <tr><td>
                 <asp:Button ID="Button1" runat="server" Text="EDIT" CommandName="edit" /></td>
                 <td>
                     <asp:Button ID="Button2" runat="server" Text="DELETE" CommandName="delete" /></td></tr>
         </ItemTemplate>
         <EditItemTemplate>
             <tr><td>C_id</td>
                 <td>
                     <asp:TextBox ID="TextBox1" runat="server" Text='<%#Eval("C_id")%>'></asp:TextBox></td>
             <td>Firstname</td>
                 <td><asp:TextBox ID="TextBox2" runat="server" Text='<%#Eval("Firstname")%>'></asp:TextBox></td></tr>
         <tr><td>Lastname</td>
                 <td><asp:TextBox ID="TextBox3" runat="server" Text='<%#Eval("Lastname")%>'></asp:TextBox></td>
         <td>Fathername</td>
                 <td><asp:TextBox ID="TextBox4" runat="server" Text='<%#Eval("Fathername")%>'></asp:TextBox></td></tr>
             <tr><td>DOB</td>
                 <td>
                     <asp:TextBox ID="TextBox5" runat="server" Text='<%#Eval("DOB")%>'></asp:TextBox></td></tr>
         <td>State</td>
                 <td>
                     <asp:TextBox ID="TextBox6" runat="server" Text='<%#Eval("State")%>'></asp:TextBox></td></tr>
                 <tr><td>City</td>
                 <td><asp:TextBox ID="TextBox7" runat="server" Text='<%#Eval("City")%>'></asp:TextBox></td>
                     <td>Party</td>
                     <td><asp:TextBox ID="TextBox8" runat="server" Text='<%#Eval("Party")%>'></asp:TextBox></td></tr>
          <tr><td>Email</td>
                 <td><asp:TextBox ID="TextBox9" runat="server" Text='<%#Eval("Email")%>'></asp:TextBox></td>
            <td>Address</td>
                 <td><asp:TextBox ID="TextBox10" runat="server" Text='<%#Eval("Address")%>'></asp:TextBox></td></tr>
              <tr><td>Contactno</td>
                 <td><asp:TextBox ID="TextBox11" runat="server" Text='<%#Eval("Contactno")%>'></asp:TextBox></td>
             <td>Username</td>
                 <td><asp:TextBox ID="TextBox12" runat="server" Text='<%#Eval("Username")%>'></asp:TextBox></td></tr>
             <tr><td>Password</td>
                 <td><asp:TextBox ID="TextBox13" runat="server" Text='<%#Eval("Password")%>'></asp:TextBox></td>
            <td>Election_reason</td>
                 <td>
                     <asp:TextBox ID="TextBox14" runat="server" Text='<%#Eval("Election_reason")%>'></asp:TextBox></td></tr>
             <tr><td>Roles</td>
                 <td>
                     <asp:TextBox ID="TextBox15" runat="server" Text='<%#Eval("Roles")%>'></asp:TextBox></td>
             </tr>

             <tr><td><asp:Button ID="Button3" runat="server" Text="UPDATE" CommandName="update"  /></td>
                 </tr>
             </EditItemTemplate> 
         <FooterTemplate></table></FooterTemplate>
                  </asp:DataList>
 </asp:Content>
