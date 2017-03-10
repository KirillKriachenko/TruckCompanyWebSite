<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Map.aspx.cs" Inherits="TruckWebSite.Pages.Map" %>

<%@ Register assembly="GMaps" namespace="Subgurim.Controles" tagprefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
     <br /><br />
    <cc1:GMap ID="GMap1" Visible="false" runat="server"/>
       

     <asp:ImageMap OnClick="ImageMap1_Click" ID="ImageMap1" runat="server" CssClass="auto-style1" ImageUrl="~/Pictures/DanadaMap2.png" Width="383px">
         <asp:RectangleHotSpot HotSpotMode="PostBack" PostBackValue="Quebec" AlternateText="Quebec" Bottom="80" Left="230" Right="320" Top="200" />
         <asp:RectangleHotSpot HotSpotMode="PostBack" PostBackValue="Ontario" AlternateText="Ontario" Bottom="155" Left="169" Right="220" Top="200" />
         <asp:RectangleHotSpot HotSpotMode="PostBack" PostBackValue="Alberta" AlternateText="Alberta" Bottom="120" Left="72" Right="112" Top="200" />
     </asp:ImageMap>
       
</asp:Content>
