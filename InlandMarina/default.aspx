<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="InlandMarina._default" MasterPageFile="Site.Master" Title="Home" %>

<%-- CSS and JavaScript links --%>
<asp:Content ID="cHead" ContentPlaceHolderID="head" runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/style.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.4.1.slim.min.js"></script>
    <script src="Scripts/umd/popper.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</asp:Content>

<%-- Introduction image card --%>
<asp:Content ID="cIntroImage" ContentPlaceHolderID="cphIntroImage" runat="server">
    <div class="position-relative overflow-hidden p-3 p-md-5 m-md-3 text-center bg-light backgroundImage">
        <div class="col-md-8 p-lg-5 mx-auto my-5">
            <h1 class="display-4 font-weight-normal text-white text-Shadow">Inland Marina</h1>
            <p class="lead font-weight-normal text-white text-Shadow">Welcome to Inland Marina located on the south shore Inland Lake, just a small commute from major centers in the south west</p>
            <a class="btn btn-primary text-white" href="#learnMore">Learn more</a>
        </div>
    </div>
</asp:Content>

<%-- Company information card --%>
<asp:Content ID="cCompanyInformation" ContentPlaceHolderID="cphCompanyInformation" runat="server">
    <div id="learnMore" class="position-relative overflow-hidden p-3 p-md-5 m-md-3 text-center bg-light">
        <div class="col-sm-12 col-md-12 col-lg-10 p-lg-5 mx-auto my-5">
            <p class="lead font-weight-normal">Inland Marina was established in the 1967 shortly after Inland Lake was created as a result of the South West damn. From its humble beginnings, it has grown to be the largest marina on Inland Lake.</p>
            <p class="lead font-weight-normal">Due to the warm climate that extends year-round, Inland Lake has become a popular tourist destination in the south west. Boat owners from California, Arizona, Nevada, and Utah are attracted to the area. Inland Marina has 90 slips ranging in size from 16 to 32 feet in length.</p>
            <p class="lead font-weight-normal">Dock services include electrical and fresh water.</p>
        </div>
    </div>
</asp:Content>





