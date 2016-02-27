<%@ Page Title="" Language="C#" MasterPageFile="~/Voter_pro.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
     <asp:DataList ID="DataList1" runat="server" OnSelectedIndexChanged="Page_Load" OnDeleteCommand="DataList1_DeleteCommand" OnEditCommand="DataList1_EditCommand" OnUpdateCommand="DataList1_UpdateCommand" OnItemCommand="DataList1_ItemCommand" Width="156px">
         <HeaderTemplate>
             <table border="2">
                 <tr><td colspan="4">VOTER</td></tr>
           
         </HeaderTemplate>
         <ItemTemplate>
             <tr><td>Voter_id</td>
                 <td>  <asp:Label ID="Label1" runat="server" Text='<%#Eval("Voter_id")%>'></asp:Label></td>
             <td colspan="2">V_photo</td><td rowspan="6">
                 <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("V_photo")%>' Width="100px" Height="200px" /></td></tr>
             <tr><td>First_name</td>
                 <td><asp:Label ID="Label2" runat="server" Text='<%#Eval("First_name")%>'></asp:Label></td>
         <td>Last_name</td>
                 <td><asp:Label ID="Label3" runat="server" Text='<%#Eval("Last_name")%>'></asp:Label></td></tr>
         <tr><td>Father_name</td>
                 <td><asp:Label ID="Label4" runat="server" Text='<%#Eval("Father_name")%>'></asp:Label></td>
             <td>DOB</td>
                 <td>
                     <asp:Label ID="Label5" runat="server" Text='<%#Eval("DOB")%>'></asp:Label></td></tr>
         <tr><td>State</td>
                 <td>
                     <asp:Label ID="Label6" runat="server" Text='<%#Eval("State")%>'></asp:Label></td>
                 <td>City</td>
                 <td><asp:Label ID="Label7" runat="server" Text='<%#Eval("City")%>'></asp:Label></td></tr>
                 <tr><td>Address</td>
                 <td><asp:Label ID="Label8" runat="server" Text='<%#Eval("Address")%>'></asp:Label></td>
                 <td>E_mail</td>
                 <td><asp:Label ID="Label9" runat="server" Text='<%#Eval("E_mail")%>'></asp:Label></td></tr>
                 <tr><td>Contact_no</td>
                 <td><asp:Label ID="Label10" runat="server" Text='<%#Eval("Contact_no")%>'></asp:Label></td>
                 <td>Pincode</td>
                 <td><asp:Label ID="Label11" runat="server" Text='<%#Eval("Pincode")%>'></asp:Label></td></tr>
                 <tr><td>User_name</td>
                 <td><asp:Label ID="Label12" runat="server" Text='<%#Eval("User_name")%>'></asp:Label></td>
                 <td>Password</td>
                 <td><asp:Label ID="Label13" runat="server" Text='<%#Eval("Password")%>'></asp:Label></td>
                 <td>Roles</td>
                 <td>
                     <asp:Label ID="Label14" runat="server" Text='<%#Eval("Roles")%>'></asp:Label></td></tr>
                 <tr><td>
                 <asp:Button ID="Button1" runat="server" Text="EDIT" CommandName="edit" /></td>
                 <td>
                     <asp:Button ID="Button2" runat="server" Text="DELETE" CommandName="delete" /></td></tr>
         </ItemTemplate>
         <EditItemTemplate>
             <tr><td>Voter_id</td>
                 <td>
                     <asp:TextBox ID="TextBox1" runat="server" Text='<%#Eval("Voter_id")%>'></asp:TextBox></td>
             <td>V_photo</td></tr>
             <tr><td>First_name</td>
                 <td>
                     <asp:TextBox ID="TextBox2" runat="server" Text='<%#Eval("First_name")%>'></asp:TextBox></td>
         <td>Last_name</td>
                 <td><asp:TextBox ID="TextBox3" runat="server" Text='<%#Eval("Last_name")%>'></asp:TextBox></td></tr>
         <tr><td>Father_name</td>
                 <td>
                     <asp:TextBox ID="TextBox4" runat="server" Text='<%#Eval("Father_name")%>'></asp:TextBox></td> 
             <td>DOB</td>
                 <td>
                     <asp:TextBox ID="TextBox5" runat="server" Text='<%#Eval("DOB")%>'></asp:TextBox></td></tr>
         <tr><td>State</td>
                 <td>
                     <asp:TextBox ID="TextBox6" runat="server" Text='<%#Eval("State")%>'></asp:TextBox></td>
                 <td>City</td>
                 <td><asp:TextBox ID="TextBox7" runat="server" Text='<%#Eval("City")%>'></asp:TextBox></td></tr>
                 <tr><td>Address</td>
                 <td><asp:TextBox ID="TextBox8" runat="server" Text='<%#Eval("Address")%>'></asp:TextBox></td>
                 <td>E_mail</td>
                 <td>
                     <asp:TextBox ID="TextBox9" runat="server" Text='<%#Eval("E_mail")%>'></asp:TextBox></td></tr>
                 <tr><td>Contact_no</td>
                 <td><asp:TextBox ID="TextBox10" runat="server" Text='<%#Eval("Contact_no")%>'></asp:TextBox></td>
                 <td>Pincode</td>
                 <td><asp:TextBox ID="TextBox11" runat="server" Text='<%#Eval("Pincode")%>'></asp:TextBox></td></tr>
                 <tr><td>User_name</td>
                 <td><asp:TextBox ID="TextBox12" runat="server" Text='<%#Eval("User_name")%>'></asp:TextBox></td>
                 <td>Password</td>
                 <td><asp:TextBox ID="TextBox13" runat="server" Text='<%#Eval("Password")%>'></asp:TextBox></td>
                 <td>Roles</td>
                 <td><asp:TextBox ID="TextBox14" runat="server" Text='<%#Eval("Roles")%>'></asp:TextBox></td></tr>
             <tr><td><asp:Button ID="Button3" runat="server" Text="UPDATE" CommandName="update"  /></td>
             </tr>
         </EditItemTemplate>
         <FooterTemplate></table></FooterTemplate>
     </asp:DataList>
     </asp:Content>





   
 





        
