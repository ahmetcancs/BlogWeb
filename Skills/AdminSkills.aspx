<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminSkills.aspx.cs" Inherits="BlogWeb.AdminSkills" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="FrmSkills" runat="server">
        <table class="table table-bordered">
            <tr>
                <th>ID</th>
                <th>SKILL</th>
                <th>TRANSACTIONS</th>
            </tr>
            <tbody>
                <asp:Repeater ID="RptSkills" runat="server">
                    <ItemTemplate>
                        <tr>
                            <th><%# Eval("ID") %></th>
                            <td><%# Eval("SKILL") %></td>
                            <td>
                                <asp:HyperLink NavigateUrl='<%#"AdminSkillDelete.aspx?ID=" + Eval("ID") %>' ID="DeleteLink" runat="server" CssClass="btn btn-danger">Delete</asp:HyperLink>
                                <asp:HyperLink NavigateUrl='<%#"AdminSkillUpdate.aspx?ID=" + Eval("ID") %>' ID="UpdateLink" runat="server" CssClass="btn btn-success">Update</asp:HyperLink>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>

        </table>
        <asp:HyperLink NavigateUrl="AdminSkillAdd.aspx" ID="AddLink" runat="server" CssClass="btn btn-info">Add an Skill</asp:HyperLink>
    </form>
</asp:Content>
