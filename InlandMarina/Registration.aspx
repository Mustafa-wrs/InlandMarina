<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="InlandMarina.Registration" MasterPageFile="Site.Master" Title="Register" %>

<%-- Introduction image card --%>
<asp:Content ID="cIntroImage" ContentPlaceHolderID="cphIntroImage" runat="server">

       <form>

        <div class="Regis">
            <h1>Register Login</h1>
            <br />
            <br />
            <asp:TextBox ID="FirstName" class="auto-style6" runat="server" placeholder="First Name"></asp:TextBox>
            <%-- <input class="auto-style6" type="text" placeholder="First Name">--%>
            <br />
             <br />
            <asp:TextBox ID="LastName" class="auto-style6" runat="server" placeholder="Last Name"></asp:TextBox>
            <%--<input class="auto-style6" type="text" placeholder="Last Name">--%>
            <br />
             <br />
            <asp:TextBox ID="Phone" class="auto-style6" runat="server" placeholder="Phone Number"></asp:TextBox>
            <%--<input class="auto-style6" type="text" placeholder="Phone Number">--%>
            <br />
             <br />
            <asp:TextBox ID="City" class="auto-style6" runat="server" placeholder="City"></asp:TextBox>
            <%--            <input class="auto-style6" type="text" placeholder="City">--%>
            <br />
             <br />
             <br />
            <asp:Button ID="Button2" class="btn btn-secondary btn-lg" runat="server" Text="Register" Width="164px" OnClick="Button2_Click1" />
            <%--<button type="button" >Large button</button>--%>
         </div>
           <br />
             <br />
             <br />

           <div class=" Login">
                <h1>Login</h1>
                <br />
                <div class="form-group">
                    <asp:TextBox ID="UserName" class="auto-style6" runat="server" placeholder="User Name"></asp:TextBox>
                    <%--                    <input type="email" class="auto-style6" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="User Name">--%>
                </div>
                <br />
         
               <div class="form-group">
                    <asp:TextBox ID="Password" class="auto-style6" runat="server" placeholder="Password"></asp:TextBox>
                    <%--                    <input type="password" class="auto-style6" id="exampleInputPassword1" placeholder="Password">--%>
                </div>
                <br />
                <asp:Button ID="Login" class="btn btn-secondary" runat="server" Text="Submit" OnClick="Login_Click" />
                <%--<button type="button" class="btn btn-secondary">Submit</button>--%>
            </div>
          
    </form>
   <br />
           
           
   

    <p>
        
    </p>
    <p>
        
    </p>
  
   

</asp:Content>

<%-- Company information card --%>
<asp:Content ID="cCompanyInformation" ContentPlaceHolderID="cphCompanyInformation" runat="server">
    <p>
        <br />
    </p>
</asp:Content>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="head">
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
            font-size : 1re;
              /*font-eight:ne-height: 3. ;*/
            color: #4950 7;
          /*back*/
        /*:*/

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
            padding: 50px;
            margin: 200px;
        }

        .Login {

            box-shadow: 10px 10px 5px grey;
            float: left;
             width: 500px;
            border: 1px solid lightgrey;
            padding: 50px;
            margin: 150px;
        }
        
    </style>
</asp:Content>

