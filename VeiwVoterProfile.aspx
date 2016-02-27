<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="VeiwVoterProfile.aspx.cs" Inherits="VeiwVoterProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:BoundField DataField="Voter_id" HeaderText="Voter_id" />
        <asp:BoundField DataField="First_name" HeaderText="First_name" />
        <asp:BoundField DataField="DOB" HeaderText="DOB" />
        <asp:BoundField DataField="City" HeaderText="City" />
        <asp:BoundField DataField="Contact_no" HeaderText="Contact_no" />
        <asp:BoundField DataField="User_name" HeaderText="User_name" />
        <asp:BoundField DataField="Password" HeaderText="Password" />
    </Columns>
    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
    <SortedAscendingCellStyle BackColor="#FDF5AC" />
    <SortedAscendingHeaderStyle BackColor="#4D0000" />
    <SortedDescendingCellStyle BackColor="#FCF6C0" />
    <SortedDescendingHeaderStyle BackColor="#820000" />
</asp:GridView>
    
</asp:Content>

