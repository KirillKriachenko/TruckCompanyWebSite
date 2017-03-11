<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="JobPage.aspx.cs" Inherits="TruckWebSite.Pages.JobPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <link rel="stylesheet" type="text/css" href="../App_Themes/StyleSheet/StyleMaterPage.css" />
     <div>
        
        <asp:LinkButton runat="server" Text="Truck Driver - Delivery Specialist" ID="joBTitle_linkBtn"></asp:LinkButton><br />
        <asp:Label ForeColor="#938f8f" runat="server" ID="location_lb" Text="Toronto, ON"></asp:Label>
         <asp:Label ForeColor="#938f8f" runat="server" ID="salary_lb" Text="$3000"></asp:Label>
         <br />
        <div class="overideText">The Truck Driver role is the linchpin of Mobile Mini. Truck – heavy duty. As a Mobile Mini Driver you will:. Many of our Drivers have moved up to Lead Drivers,...</div>
    </div>
</asp:Content>
