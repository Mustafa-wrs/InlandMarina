<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="InlandMarina.Registration" MasterPageFile="Site.Master" Title="Register" %>

<%-- Heading --%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/style.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.4.1.slim.min.js"></script>
    <script src="Scripts/umd/popper.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/app.js"></script>
    <style type="text/css">
        .auto-style6 {
            display: block;
            width: 100%;
            height: calc(1.5em + .75rem + 2px);
            font-size: 1rem;
            font-weight: 400;
            line-height: 3.5;
            color: #495057;
            background-clip: padding-box;
            border-radius: .25rem;
            transition: none;
            border: 1px solid #ced4da;
            background-color: #fff;
        }

        .Regis {
            box-shadow: 10px 10px 5px grey;
            float: right;
            width: 600px;
            border: 1px solid lightgray;
            border-radius: 12px;
            padding: 50px;
            margin: 180px;
        }

        .Login {
            box-shadow: 10px 10px 5px grey;
            float: left;
            width: 500px;
            border: 1px solid lightgrey;
            border-radius: 12px;
            padding: 50px;
            margin: 150px;
        }

        .auto-style7 {
            clear: both;
        }
    </style>
</asp:Content>

<%-- Introduction image card --%>
<asp:Content ID="cIntroImage" ContentPlaceHolderID="cphIntroImage" runat="server">
    <div class="Regis">
        <h1>Register Login</h1><br /><br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="FirstName" ErrorMessage="RequiredFieldValidator" CssClass="text-danger" Text="Please input First name"></asp:RequiredFieldValidator>
        <asp:TextBox ID="FirstName" class="auto-style6" runat="server" placeholder="First Name"></asp:TextBox><br /><br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="LastName" ErrorMessage="RequiredFieldValidator" CssClass="text-danger" Text="Please input Last Name"></asp:RequiredFieldValidator>
        <asp:TextBox ID="LastName" class="auto-style6" runat="server" placeholder="Last Name"></asp:TextBox><br /><br />
         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Phone" ErrorMessage="RequiredFieldValidator" CssClass="text-danger" Text="Please input Phone" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Phone" CssClass="text-danger" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}">Use this format: 123-456-7890</asp:RegularExpressionValidator>
        <asp:TextBox ID="Phone" class="auto-style6" runat="server" placeholder="Phone Number"></asp:TextBox><br /><br />
         <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="City" ErrorMessage="RequiredFieldValidator" CssClass="text-danger" Text="Please input City"></asp:RequiredFieldValidator>
        <asp:TextBox ID="City" class="auto-style6" runat="server" placeholder="City"></asp:TextBox><br /><br />
         <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="UserName" ErrorMessage="RequiredFieldValidator" CssClass="text-danger" Text="Please input User name"></asp:RequiredFieldValidator>
        <asp:TextBox ID="UserName" class="auto-style6" runat="server" placeholder="UserName"></asp:TextBox> <br /><br />
         <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="Password" ErrorMessage="RequiredFieldValidator" CssClass="text-danger" Text="Please input password"></asp:RequiredFieldValidator>
        <asp:TextBox type="password" ID="Password" class="auto-style6" runat="server" placeholder="Password"></asp:TextBox><br />
        <asp:Label ID="lblFailed" runat="server" Text="Customer already exist, please try to sign in instead" ForeColor="Red" Visible="False"></asp:Label>
        <asp:Label ID="lblSuccess" runat="server" Text="Registeration successful, please login now" ForeColor="#33CC33" Visible="False"></asp:Label>
        <asp:Button ID="Button2" class="btn btn-secondary btn-lg" runat="server" Text="Register" Width="164px" OnClick="Button2_Click1" />
    </div>
    <br /><br /><br /><br /><br /><br />

    <div class=" Login">
        <h1>Login</h1><br />
        <div class="form-group">
            <asp:TextBox ID="UserNameR" class="auto-style6" runat="server" placeholder="User Name" ControlToValidate="UserNameR"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" Text="Username is required" ControlToValidate="UserNameR"></asp:RequiredFieldValidator>
        </div><br />
        <div class="form-group">
            <asp:TextBox type="Password" ID="PasswordR" class="auto-style6" runat="server" placeholder="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="PasswordR" Text="Password is required"></asp:RequiredFieldValidator>
            <asp:Label ID="Label1" runat="server" Text="" ForeColor="Red"></asp:Label>
        </div><br />
        <asp:Button ID="Login" class="btn btn-secondary" runat="server" Text="Submit" OnClick="Login_Click" Width="110px" /></div>
    
</asp:Content>

