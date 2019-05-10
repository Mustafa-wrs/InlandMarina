<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="InlandMarina._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/style.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
        <%-- Nav --%>
        <nav class="site-header sticky-top py-1">
            <div class="container d-flex flex-column flex-md-row justify-content-between">
                <a class="py-2" href="#">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="d-block mx-auto" role="img" viewBox="0 0 24 24" focusable="false">
                        <title>Product</title>
                        <circle cx="12" cy="12" r="10"></circle><path d="M14.31 8l5.74 9.94M9.69 8h11.48M7.38 12l5.74-9.94M9.69 16L3.95 6.06M14.31 16H2.83m13.79-4l-5.74 9.94"></path></svg>
                </a>
                <a class="py-2 d-none d-md-inline-block" href="#">Home</a>
                <a class="py-2 d-none d-md-inline-block" href="#">Available Slip</a>
                <a class="py-2 d-none d-md-inline-block" href="#">Lease Slip</a>
                <a class="py-2 d-none d-md-inline-block" href="#">Register</a>
                <a class="py-2 d-none d-md-inline-block" href="#">Contact Us</a>
            </div>
        </nav>

        <%-- First Card --%>
        <div class="position-relative overflow-hidden p-3 p-md-5 m-md-3 text-center bg-light backgroundImage">
            <div class="col-md-5 p-lg-5 mx-auto my-5">
                <h1 class="display-4 font-weight-normal text-white text-Shadow">Inland Marina</h1>
                <p class="lead font-weight-normal text-white text-Shadow">Welcome to Inland Marina located on the south shore Inland Lake, just a small commute from major centers in the south west</p>
                <a class="btn btn-outline-secondary text-white" href="#">Coming soon</a>
            </div>
        </div>

    </form>

    <script src="Scripts/jquery-3.4.1.slim.min.js"></script>
    <script src="Scripts/umd/popper.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</body>
</html>
