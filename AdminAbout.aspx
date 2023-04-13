<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminAbout.aspx.cs" Inherits="BlogWeb.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

<form id="FrmAdminAbout" runat="server">
    <div class="form-group">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
            <asp:TextBox ID="TxtName" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label ID="Label2" runat="server" Text="Surname"></asp:Label>
            <asp:TextBox ID="TxtSurname" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label ID="Label3" runat="server" Text="ADDRESS"></asp:Label>
            <asp:TextBox ID="TxtAddress" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label ID="Label4" runat="server" Text="MAIL"></asp:Label>
            <asp:TextBox ID="TxtMail" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label ID="Label5" runat="server" Text="PHONE"></asp:Label>
            <asp:TextBox ID="TxtPhone" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label ID="Label6" runat="server" Text="NOTE"></asp:Label>
            <asp:TextBox ID="TxtNote" runat="server" CssClass="form-control" Height="100px" TextMode="MultiLine"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label ID="Label7" runat="server" Text="PHOTO"></asp:Label>
            <asp:TextBox ID="TxtPhoto" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <asp:Button ID="BtnUpdate" runat="server" Text="Update" CssClass="btn btn-success" OnClick="BtnUpdate_Click"/>

    </div>
</form>
</asp:Content>
