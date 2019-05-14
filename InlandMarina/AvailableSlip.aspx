<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AvailableSlip.aspx.cs" Inherits="InlandMarina.AvailableSlip" MasterPageFile="Site.Master" Title="Available Slip" %>


<asp:Content ID="cHeader" ContentPlaceHolderID="cphIntroImage" runat="server">
    <div class="container">
        <div class="card-deck mb-3 mt-5 text-center">
            <div class="card mb-4 shadow-sm">
                <div class="card-header">
                    <h4 class="my-0 font-weight-normal">Dock A</h4>
                </div>
                <div class="card-body">
                    <%--<h1 class="card-title pricing-card-title">Dock <small class="text-muted">A</small></h1>--%>
                    <ul class="list-unstyled mt-3 mb-4">
                        <li>Water Service <span class="badge badge-success">&#10003;</span></li>
                        <li>Electrical Service <span class="badge badge-secondary">&#10005;</span></li>

                    </ul>
                    <select class="form-control form-control-lg mb-4">
                        <option selected>Select Slip</option>
                        <option>Slip 13feet</option>
                        <option>Slip 15feet</option>
                        <option>Slip 25feet</option>
                        <option>Slip 30feet</option>
                        <option>Slip 40feet</option>
                    </select>
                    <asp:Button ID="Button1" runat="server" Text="Lease" class="btn btn-lg btn-block btn-primary" />
                </div>
            </div>
            <div class="card mb-4 shadow-sm">
                <div class="card-header">
                    <h4 class="my-0 font-weight-normal">Dock B</h4>
                </div>
                <div class="card-body">
                    <%--<h1 class="card-title pricing-card-title">Dock <small class="text-muted">A</small></h1>--%>
                    <ul class="list-unstyled mt-3 mb-4">
                        <li>Water Service <span class="badge badge-success">&#10003;</span></li>
                        <li>Electrical Service <span class="badge badge-secondary">&#10005;</span></li>

                    </ul>
                    <select class="form-control form-control-lg mb-4">
                        <option selected>Select Slip</option>
                        <option>Slip 13feet</option>
                        <option>Slip 15feet</option>
                        <option>Slip 25feet</option>
                        <option>Slip 30feet</option>
                        <option>Slip 40feet</option>
                    </select>
                    <asp:Button ID="Button2" runat="server" Text="Lease" class="btn btn-lg btn-block btn-primary" />
                </div>
            </div>
            <div class="card mb-4 shadow-sm">
                <div class="card-header">
                    <h4 class="my-0 font-weight-normal">Dock C</h4>
                </div>
                <div class="card-body">
                    <%--<h1 class="card-title pricing-card-title">Dock <small class="text-muted">A</small></h1>--%>
                    <ul class="list-unstyled mt-3 mb-4">
                        <li>Water Service <span class="badge badge-success">&#10003;</span></li>
                        <li>Electrical Service <span class="badge badge-secondary">&#10005;</span></li>

                    </ul>
                    <select class="form-control form-control-lg mb-4">
                        <option selected>Select Slip</option>
                        <option>Slip 13feet</option>
                        <option>Slip 15feet</option>
                        <option>Slip 25feet</option>
                        <option>Slip 30feet</option>
                        <option>Slip 40feet</option>
                    </select>
                    <asp:Button ID="Button3" runat="server" Text="Lease" class="btn btn-lg btn-block btn-primary" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
