<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="InlandMarina.ContactUs" MasterPageFile="Site.Master" Title="Contact Us" %>


<asp:Content ID="cHeader" ContentPlaceHolderID="cphIntroImage" runat="server">
    <div class="container">
        <div class="jumbotron mt-4">
            <div class="text-center mb-5">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/inlandmarina_banner.jpg" />
            </div>
            <h1 class="display-4">We are happy to hear from you.</h1>

            <address>
                Inland Lake Marina<br />
                Box 123<br />
                Inland Lake, Arizona<br />
                86038<br /><br />
                (Office Phone) 928-450-2234<br />
                (Lease Phone) 928-450-2235<br />
                (Fax) 928-450-2236<br /><br />
            </address>
            <hr class="my-4">
            <address>
                Manager: Glenn Cooke<br />
                Slip Manager: Kimberley Carson<br />
                Contact us: <a href="mailto:info@inlandmarina.com">email</a>.
            </address>
        </div>
    </div>
</asp:Content>
