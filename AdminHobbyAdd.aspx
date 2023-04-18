<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminHobbyAdd.aspx.cs" Inherits="BlogWeb.AdminHobbyAdd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="FrmHobbyAdd" runat="server">
        <div class="form-group">
            <div>
                <asp:Label ID="Label1" runat="server" Text="HOBBY"></asp:Label>
                <asp:TextBox ID="TxtHobby" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
            </div>
            <br />
            <asp:Button ID="BtnAdd" runat="server" Text="Add" CssClass="btn btn-primary" OnClick="BtnAdd_Click" />
        </div>
    </form>
</asp:Content>
