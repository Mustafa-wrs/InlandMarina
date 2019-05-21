<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="InlandMarina.Registration" MasterPageFile="Site.Master" Title="Register" %>

<%-- Heading --%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/style.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.4.1.slim.min.js"></script>
    <script src="Scripts/umd/popper.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
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
            border: 1px solid lightgray;
            border-radius: 12px;
            margin: 120px;

        }

        .input{  padding: 20px; 
                 width: 650px;

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
        /*h4{
            
            text-align: left;
        }*/
        
       .imgcontainer{
           text-align: center;
            margin: 18px 0 18px 0;
       }
        .avatar {
            width: 122px;
            height: 122px;
        }
        .title { 
            font: 4E667E;
           /*margin: 8px 5 18px 0;*/
            padding: 10px;
              }
        }
        </style>
</asp:Content>

<%-- Introduction image card --%>
<asp:Content ID="cIntroImage" ContentPlaceHolderID="cphIntroImage" runat="server">
    <div class="Regis">
        <div class="title" >
       <h1 style="color: #52607A">Register</h1><br /><hr /></div>
        <div class=" input">
            <asp:Label ID="lblFailed" runat="server" Text="User name already exist. Please try to sign in or use a differnt user name." ForeColor="Red" Visible="False" Font-Size="Medium"></asp:Label>
            <asp:Label ID="lblSuccess" runat="server" Text="Registeration successful, please login now" ForeColor="#33CC33" Visible="False"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="FirstName" ErrorMessage="RequiredFieldValidator" CssClass="text-danger" Text="Please input First name" ValidationGroup="register"></asp:RequiredFieldValidator>
            <asp:TextBox ID="FirstName" class="auto-style6" runat="server" placeholder="First Name" ValidationGroup="register"></asp:TextBox><br /><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="LastName" ErrorMessage="RequiredFieldValidator" CssClass="text-danger" Text="Please input Last Name" ValidationGroup="register"></asp:RequiredFieldValidator>
            <asp:TextBox ID="LastName" class="auto-style6" runat="server" placeholder="Last Name" ValidationGroup="register"></asp:TextBox><br /><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Phone" ErrorMessage="RequiredFieldValidator" CssClass="text-danger" Text="Please input Phone" Display="Dynamic" ValidationGroup="register"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Phone" CssClass="text-danger" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ValidationExpression="((\(\d{3}\) ?)|(\d{3}))?\d{3}\d{4}" ValidationGroup="register">Phone Number Must be Ten Digits</asp:RegularExpressionValidator>
            <asp:TextBox ID="Phone" class="auto-style6" runat="server" placeholder="Phone Number" ValidationGroup="register"></asp:TextBox><br /><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="City" ErrorMessage="RequiredFieldValidator" CssClass="text-danger" Text="Please input City" ValidationGroup="register"></asp:RequiredFieldValidator>
            <asp:TextBox ID="City" class="auto-style6" runat="server" placeholder="City" ValidationGroup="register"></asp:TextBox><br /><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="UserName" ErrorMessage="RequiredFieldValidator" CssClass="text-danger" Text="Please input User name" ValidationGroup="register"></asp:RequiredFieldValidator>
            <asp:TextBox ID="UserName" class="auto-style6" runat="server" placeholder="UserName" ValidationGroup="register"></asp:TextBox><br /><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="Password" ErrorMessage="RequiredFieldValidator" CssClass="text-danger" Text="Please input password" ValidationGroup="register"></asp:RequiredFieldValidator>
            <asp:TextBox type="password" ID="Password" class="auto-style6" runat="server" placeholder="Password" ValidationGroup="register"></asp:TextBox><br />
            <asp:Button ID="Button2" class="btn btn-secondary btn-lg btn-block" runat="server" Text="Register"  OnClick="Button2_Click1" BackColor="#4E667E" ValidationGroup="register" /></div>
            
    </div>
    <br /><br /><br /><br /><br /><br />

    <div class=" Login">
       <div class="imgcontainer">
            <img class="avatar" src="Images/loginImage.jpg" />
        </div>
        <div class="form-group">
          <asp:TextBox ID="UserNameR" class="auto-style6" runat="server" placeholder="User Name" ControlToValidate="UserNameR" ValidationGroup="login"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="UserNameR" CssClass="danger" ErrorMessage="RequiredFieldValidator" ValidationGroup="login" ForeColor="Red">Input required</asp:RequiredFieldValidator>
        </div>
        
        <br />
        <div class="form-group">
            <asp:TextBox type="Password" ID="PasswordR" class="auto-style6" runat="server" placeholder="Password" ValidationGroup="login"></asp:TextBox>
            <asp:Label ID="Label1" runat="server" Text="" ForeColor="Red"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="PasswordR" CssClass="danger" Display="Dynamic" ErrorMessage="RequiredFieldValidator"  ValidationGroup="login" ForeColor="Red">Input required</asp:RequiredFieldValidator>
        </div><br />
        <asp:Button ID="Login" class="btn btn-secondary btn-lg btn-block" runat="server" Text="Login" OnClick="Login_Click"  BackColor="#4E667E" ValidationGroup="login" />
         
    </div>
    
</asp:Content>

