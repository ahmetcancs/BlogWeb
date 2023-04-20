<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminToDoList.aspx.cs" Inherits="BlogWeb.AdminToDoList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="FrmToDoList" runat="server">
        <table class="table table-bordered">
            <tr>
                <th>ID</th>
                <th>TITLE</th>
                <th>DESCRIPTIONS</th>
                <th>TRANSACTIONS</th>
            </tr>
            <tbody>
                <asp:Repeater ID="RptToDoList" runat="server">
                    <ItemTemplate>
                        <tr>
                            <th><%# Eval("ID") %></th>
                            <td><%# Eval("TITLE") %></td>
                            <td><%# Eval("DESCRIPTION") %></td>
                            <td>
                                <asp:HyperLink NavigateUrl='<%#"AdminToDoListDelete.aspx?ID=" + Eval("ID") %>' ID="DeleteLink" runat="server" CssClass="btn btn-danger">Delete</asp:HyperLink>
                                <asp:HyperLink NavigateUrl='<%#"AdminToDoListUpdate.aspx?ID=" + Eval("ID") %>' ID="UpdateLink" runat="server" CssClass="btn btn-success">Update</asp:HyperLink>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>
        </table>
        <asp:HyperLink NavigateUrl="~/AdminToDoListAdd.aspx" ID="AddLink" runat="server" CssClass="btn btn-info">Add a Plan</asp:HyperLink>
    </form>
</asp:Content>
