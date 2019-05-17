<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LeaseSlip.aspx.cs" Inherits="InlandMarina.LeaseSlip" MasterPageFile="Site.Master" Title="Lease Slip" %>

<asp:Content ID="cHeader" ContentPlaceHolderID="cphIntroImage" runat="server">
    <h1>Lease Slip Page by Amin</h1>
    <link href="stylesheet/StyleSheet1.css" rel="stylesheet" />
   <div class="inline">


</div>

        <link href="stylesheet/StyleSheet1.css" rel="stylesheet" />
        <div class=" champ card" style="width: 24rem;">
      <div class="card-header">
        Purchase Information
      </div>
      <ul class="list-group list-group-flush">
        <li class="list-group-item">Name <asp:Label ID="nameLbl" runat="server" Text=""></asp:Label></li>
            
        <li class="list-group-item">Place <asp:Label ID="dockALbl" runat="server" Text=""></asp:Label></li>
        
        <li class="list-group-item">Dock B <asp:Label ID="dockBLbl" runat="server" Text=""></asp:Label></li>
        
          <li class="list-group-item">SLIPS <asp:Label ID="numSlipsLbl" runat="server" Text=""></asp:Label></li>
      </ul>

    <label  for="exampleFormControlTextarea1"></label>
    <textarea style="color:#ffffff00" readonly="readonly" class="form-control color" id="exampleFormControlTextarea1" rows="3"><asp:ListBox ID="slipLeaseBox" runat="server"></asp:ListBox></textarea>
  </div>
    </div>
  </div>



</asp:Content>