<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminExperiences.aspx.cs" Inherits="WebApplication3.AdminExperiences" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">
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
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <th><%# Eval("ID") %></th>
                        <td><%# Eval("TITLE") %></td>
                        <td><%# Eval("SUBTITLE") %></td>
                        <td><%# Eval("EXPLANATION") %></td>
                        <td><%# Eval("DATE") %></td>
                        <td>
                            <asp:HyperLink NavigateUrl='<%#"AdminExperienceDelete.aspx?ID=" + Eval("ID") %>' ID="HyperLink1" runat="server">Delete</asp:HyperLink>
                            <asp:HyperLink NavigateUrl='<%#"AdminExperienceUpdate.aspx?ID=" + Eval("ID") %>' ID="HyperLink2" runat="server">Update</asp:HyperLink>
                       </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>

        </table>
        <asp:HyperLink NavigateUrl="~/AdminExperienceAdd.aspx" ID="HyperLink3" runat="server" CssClass="btn btn-info">ExperienceAdd</asp:HyperLink>
      </form>
</asp:Content>
