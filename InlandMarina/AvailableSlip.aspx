<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AvailableSlip.aspx.cs" Inherits="InlandMarina.AvailableSlip" MasterPageFile="Site.Master" Title="Available Slip" %>

<%-- Header card --%>
<asp:Content ID="cHeader" ContentPlaceHolderID="cphIntroImage" runat="server">
    <div class="jumbotron jumbotron-fluid">
        <div class="container">
            <h1 class="display-4">Available Slips</h1>
            <p class="lead">View our available slips and choose the one that has the services you are looking for.</p>
        </div>
    </div>
</asp:Content>

<%-- Available slips card --%>

<asp:Content ID="cCompanyInformation" ContentPlaceHolderID="cphCompanyInformation" runat="server">
    <div class="container">
        <div class="card-deck mb-3 mt-5 text-center">
            <asp:Repeater ID="Repeater1" ItemType="BSLibrary.Dock" runat="server" OnItemDataBound="Repeater1_ItemDataBound" OnItemCommand="Repeater1_ItemCommand">
                <ItemTemplate>
                    <div class="card mb-4 shadow-sm">
                        <div class="card-header">
                            <h4 class="my-0 font-weight-normal"><%# Item.name %></h4>
                        </div>
                        <div class="card-body">
                            <ul class="list-unstyled mt-3 mb-4">
                                <li>Water Service 
                                    <asp:Label ID="Label1" Visible="<%# Item.waterService %>" CssClass="badge badge-success" runat="server" Text="Yes"></asp:Label>
                                    <asp:Label ID="Label2" Visible="<%# !Item.waterService %>" CssClass="badge badge-secondary" runat="server" Text="No"></asp:Label>
                                </li>
                                <li>Electrical Service 
                                    <asp:Label ID="Label3" Visible="<%# Item.electricalService %>" CssClass="badge badge-success" runat="server" Text="Yes"></asp:Label>
                                    <asp:Label ID="Label4" Visible="<%# !Item.electricalService %>" CssClass="badge badge-secondary" runat="server" Text="No"></asp:Label>
                                </li>
                            </ul>
                            <asp:Label ID="lblDockID" runat="server" Text="" Visible="False"></asp:Label>
                            <asp:DropDownList ID="DropDownList1" runat="server" class="form-control form-control-lg mb-4"></asp:DropDownList>
                            <asp:Button ID="Button1" class="btn btn-lg btn-block btn-primary" runat="server" CommandName="Lease" Text="Lease" />
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
        <asp:Label ID="lblResult2" runat="server" Text="Label"></asp:Label>
    </div>
</asp:Content>
