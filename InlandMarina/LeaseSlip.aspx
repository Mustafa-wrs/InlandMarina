<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LeaseSlip.aspx.cs" Inherits="InlandMarina.LeaseSlip" MasterPageFile="Site.Master" Title="Lease Slip" %>

<asp:Content ID="cHeader" ContentPlaceHolderID="cphIntroImage" runat="server">
    <h1></h1>
    <div class="inline">
    </div>

    <link href="stylesheet/StyleSheet1.css" rel="stylesheet" />
    <div class="champ card" style="width: 24rem;">
        <div class="card-header primary color">
            Purchase Information
        </div>
        <ul class="list-group list-group-flush">
            <li class="list-group-item">Name:
                <asp:Label ID="nameLbl" runat="server" Text=""></asp:Label></li>
            <% if (Session["LeasedSlipID"] != null)
                { %>
            <li class="list-group-item">Place:
                <asp:Label ID="dockALbl" runat="server" Text=""></asp:Label></li>

            <li class="list-group-item">Width x Length:
                <asp:Label ID="widthLengthLbl" runat="server"></asp:Label></li>

            <li class="list-group-item">Electricty:
                <asp:Label ID="numSlipsLbl" runat="server" Text=""></asp:Label></li>

            <li class="list-group-item">Water:<asp:Label ID="waterlbl" runat="server" Text="Label"></asp:Label></li>
            <%} %>
            <li class="list-group-item greyColor" style="text-align: center">Previous Slips</li>

        </ul>

        <label for="exampleFormControlTextarea1"></label>

        <asp:ListBox class="form-control" ID="slipLeaseBox" runat="server"></asp:ListBox>
    </div>
</asp:Content>
