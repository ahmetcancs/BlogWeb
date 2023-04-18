<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminEventUpdate.aspx.cs" Inherits="BlogWeb.AdminEventUpdate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="FrmEventUpdate" runat="server">
        <div class="form-group">
            <div>
                <asp:Label ID="Label1" runat="server" Text="ID"></asp:Label>
                <asp:TextBox ID="TxtId" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label2" runat="server" Text="EVENT"></asp:Label>
                <asp:TextBox ID="TxtEvent" runat="server" CssClass="form-control" Height="100px" TextMode="MultiLine"></asp:TextBox>
            </div>
            <br />
            <asp:Button ID="BtnUpdate" runat="server" Text="Update" CssClass="btn btn-primary" OnClick="BtnUpdate_Click" />
        </div>
    </form>
</asp:Content>
