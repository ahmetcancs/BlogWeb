<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebApplication3.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

<form id="Form1" runat="server">
    <div class="form-group">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label ID="Label2" runat="server" Text="Surname"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label ID="Label3" runat="server" Text="ADDRESS"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label ID="Label4" runat="server" Text="MAIL"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label ID="Label5" runat="server" Text="PHONE"></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label ID="Label6" runat="server" Text="NOTE"></asp:Label>
            <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" Height="100px" TextMode="MultiLine"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label ID="Label7" runat="server" Text="PHOTO"></asp:Label>
            <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <asp:Button ID="Button1" runat="server" Text="Update" CssClass="btn btn-success" OnClick="Button1_Click"/>

    </div>
</form>
</asp:Content>
