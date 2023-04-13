<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminEducationAdd.aspx.cs" Inherits="BlogWeb.AdminEducationAdd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="FrmEducationAdd" runat="server">
    <div class="form-group">
        <div>
            <asp:Label ID="Label1" runat="server" Text="TITLE"></asp:Label>
            <asp:TextBox ID="TxtTitle" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label ID="Label2" runat="server" Text="SUBTITLE"></asp:Label>
            <asp:TextBox ID="TxtSubtitle" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label ID="Label3" runat="server" Text="EXPLANATION"></asp:Label>
            <asp:TextBox ID="TxtExplanation" runat="server" CssClass="form-control" Height="100px"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label ID="Label4" runat="server" Text="AVERAGE"></asp:Label>
            <asp:TextBox ID="TxtAverage" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
       <br />
        <div>
            <asp:Label ID="Label5" runat="server" Text="DATE"></asp:Label>
            <asp:TextBox ID="TxtDate" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
       <br />
        <asp:Button ID="BtnAdd" runat="server" Text="Add" CssClass="btn btn-primary" OnClick="BtnAdd_Click"/>

    </div>
</form>
</asp:Content>
