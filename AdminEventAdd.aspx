<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminEventAdd.aspx.cs" Inherits="BlogWeb.AdminEventAdd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="FrmEventAdd" runat="server">
    <div class="form-group">
        <div>
            <asp:Label ID="Label1" runat="server" Text="EVENT"></asp:Label>
            <asp:TextBox ID="TxtEvent" runat="server" CssClass="form-control" Height="100px" TextMode="MultiLine"></asp:TextBox>
        </div>
        <br />
        <asp:Button ID="BtnAdd" runat="server" Text="Add" CssClass="btn btn-primary" OnClick="BtnAdd_Click"/>
    </div>
</form>
</asp:Content>
