<%@ Page Title="Library Management System" Language="C#" MasterPageFile="~/Admin/AdminSite.Master" AutoEventWireup="true" CodeBehind="AddPublisher.aspx.cs" Inherits="Library_Management.Admin.AddPublisher" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <div class="container border">
        <div class="row">
            <div class="col-lg-10 px-lg-4">
                <h4 class="text-base text-primary text-uppercase mb-4 text-center">Add Publisher</h4>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6 px-lg-4">
                <div class="form-group mb-4  ">
                    <label>Publisher ID</label>
                    <asp:TextBox ID="txtID" required="true" CssClass="form-control border-0 shadow form-control-lg text-base bg-dark-subtle" placeholder="Publisher ID" runat="server"></asp:TextBox>

                </div>
            </div>
            <div class="col-lg-6 px-lg-4">
                <div class="form-group mb-4">
                    <label>Publisher Name</label>
                    <asp:TextBox ID="txtPublisherName"  CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="Publisher Name" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="* Enter Publisher Name" Display="Dynamic" ControlToValidate="txtPublisherName" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>

                </div>
            </div>
            <div class="col-lg-6 px-lg-4">
                <div class="form-group mb-4">

                    <asp:Button ID="btnAddPublisher" Text="Submit" CssClass="btn btn-success" Height="40px" Width="120px" runat="server" OnClick="btnAddPublisher_Click" />
                    <asp:Button ID="btnupdatepublisher" CssClass="btn btn-info" runat="server" Text="Update" Height="40px" Width="120px" Visible="false" OnClick="btnupdatepublisher_Click" />
                    <asp:Button ID="btndeletepublisher" CssClass="btn btn-danger" runat="server" Text="Cancel" Height="40px" Width="120px" Visible="false" OnClick="btndeletepublisher_Click" />
                </div>
            </div>

        </div>

    </div>
    <div class="container">
        <div class="row">
            <div class="table-responsive">
                <h4>Publisher List</h4>
                <hr />
                <asp:Repeater ID="Repeater2" runat="server" OnItemCommand="Repeater2_ItemCommand">

                    <HeaderTemplate>
                        <table class="table table-bordered table-hover">
                            <thead class="alert-info ">
                                <tr>
                                    <th><span>Publisher ID</span></th>
                                    <th><span>Publisher Name</span></th>
                                    <th>&nbsp;</th>
                                </tr>

                            </thead>
                            <tbody>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td><%#Eval("publisher_id") %></td>
                            <td><%#Eval("publisher_name") %></td>
                            <td style="width: 15%">
                                <asp:LinkButton ID="lnkEdit" CssClass="table-link text-primary" runat="server" CommandArgument='<%#Eval("publisher_id") %>' CommandName="edit" ToolTip="Edit Record">
                                                   <span class="fa-stack">
                                                       <i class="fa fa-square fa-stack-2x"></i>
                                                       <i class="fa fa-pencil fa-stack-1x fa-inverse"></i>

                                                   </span>
                                </asp:LinkButton>
                                <asp:LinkButton ID="lnkDelete" CssClass="table-link text-danger" runat="server" CommandArgument='<%#Eval("publisher_id") %>' CommandName="delete" Text="Delete" ToolTip="Delete Record" OnClientClick="return confirm('Do you want to delete this row?');">
                                                   <span class="fa-stack">
                                                       <i class="fa fa-square fa-stack-2x"></i>
                                                       <i class="fa fa-trash fa-stack-1x fa-inverse"></i>

                                                   </span>
                                </asp:LinkButton>
                            </td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </tbody>
                                     </table>
                    </FooterTemplate>


                </asp:Repeater>
            </div>

        </div>
    </div>
</asp:Content>
