<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminEvents.aspx.cs" Inherits="BlogWeb.AdminEvents" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="FrmEvent" runat="server">
        <table class="table table-bordered">
            <tr>
                <th>ID</th>
                <th>EVENT</th>
                <th>TRANSACTIONS</th>
            </tr>
            <tbody>
                <asp:Repeater ID="RptEvent" runat="server">
                    <ItemTemplate>
                        <tr>
                            <th><%# Eval("ID") %></th>
                            <td><%# Eval("EVENT") %></td>
                            <td>
                                <asp:HyperLink NavigateUrl='<%#"AdminEventDelete.aspx?ID=" + Eval("ID") %>' ID="DeleteLink" runat="server" CssClass="btn btn-danger">Delete</asp:HyperLink>
                                <asp:HyperLink NavigateUrl='<%#"AdminEventUpdate.aspx?ID=" + Eval("ID") %>' ID="UpdateLink" runat="server" CssClass="btn btn-success">Update</asp:HyperLink>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>
        </table>
        <asp:HyperLink NavigateUrl="~/AdminEventAdd.aspx" ID="AddLink" runat="server" CssClass="btn btn-info">Add an Event Info</asp:HyperLink>
    </form>
</asp:Content>
