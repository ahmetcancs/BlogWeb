<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminExperiences.aspx.cs" Inherits="BlogWeb.AdminExperiences" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="FrmExperiences" runat="server">
        <table class="table table-bordered">
            <tr>
                <th>ID</th>
                <th>TITLE</th>
                <th>SUBTITLE</th>
                <th>EXPLANATION</th>
                <th>DATE</th>
                <th>TRANSACTIONS</th>
            </tr>
            <tbody>
                <asp:Repeater ID="RptExperiences" runat="server">
                    <ItemTemplate>
                        <tr>
                            <th><%# Eval("ID") %></th>
                            <td><%# Eval("TITLE") %></td>
                            <td><%# Eval("SUBTITLE") %></td>
                            <td><%# Eval("EXPLANATION") %></td>
                            <td><%# Eval("DATE") %></td>
                            <td>
                                <asp:HyperLink NavigateUrl='<%#"AdminExperienceDelete.aspx?ID=" + Eval("ID") %>' ID="DeleteLink" runat="server" CssClass="btn btn-danger">Delete</asp:HyperLink>
                                <asp:HyperLink NavigateUrl='<%#"AdminExperienceUpdate.aspx?ID=" + Eval("ID") %>' ID="UpdateLink" runat="server" CssClass="btn btn-success">Update</asp:HyperLink>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>

        </table>
        <asp:HyperLink NavigateUrl="AdminExperienceAdd.aspx" ID="AddLink" runat="server" CssClass="btn btn-info">Add an Experience</asp:HyperLink>
    </form>
</asp:Content>
