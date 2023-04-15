<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminHobbies.aspx.cs" Inherits="BlogWeb.AdminHobbies" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="FrmHobbies" runat="server">
        <table class="table table-bordered">
        <tr>
            <th>ID</th>
            <th>HOBBY</th>
            <th>TRANSACTIONS</th>
        </tr>
        <tbody>
            <asp:Repeater ID="RptHobbies" runat="server">
                <ItemTemplate>
                    <tr>
                        <th><%# Eval("ID") %></th>
                        <td><%# Eval("HOBBY") %></td>
                        <td>
                            <asp:HyperLink NavigateUrl='<%#"AdminHobbyDelete.aspx?ID=" + Eval("ID") %>' ID="DeleteLink" runat="server" CssClass="btn btn-danger">Delete</asp:HyperLink>
                            <asp:HyperLink NavigateUrl='<%#"AdminHobbyUpdate.aspx?ID=" + Eval("ID") %>' ID="UpdateLink" runat="server" CssClass="btn btn-success">Update</asp:HyperLink>
                       </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>

        </table>
        <asp:HyperLink NavigateUrl="~/AdminHobbyAdd.aspx" ID="AddLink" runat="server" CssClass="btn btn-info">Add an Hobby</asp:HyperLink>
      </form>
</asp:Content>
