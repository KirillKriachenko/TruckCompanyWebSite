<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TruckWebSite.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div id="Miniform">
        <asp:Label ID="LabelBuy" runat="server" CssClass="labels" Text="Buy Your Truck!!!!"></asp:Label><br />
        <asp:DropDownList ID="DropDownList" CssClass="boxes" runat="server">
            <asp:ListItem>Select....</asp:ListItem>
            <asp:ListItem></asp:ListItem>
            <asp:ListItem></asp:ListItem>
            <asp:ListItem></asp:ListItem>
            <asp:ListItem></asp:ListItem>
            <asp:ListItem></asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList><br /> 
              <asp:DropDownList ID="DropDownList1"  CssClass="boxes" runat="server">
            <asp:ListItem>Year...</asp:ListItem>
            <asp:ListItem></asp:ListItem>
            <asp:ListItem></asp:ListItem>
            <asp:ListItem></asp:ListItem>
            <asp:ListItem></asp:ListItem>
            <asp:ListItem></asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList><br />
               <asp:DropDownList ID="DropDownList2" CssClass="boxes" runat="server">
            <asp:ListItem>Brand...</asp:ListItem>
            <asp:ListItem></asp:ListItem>
            <asp:ListItem></asp:ListItem>
            <asp:ListItem></asp:ListItem>
            <asp:ListItem></asp:ListItem>
            <asp:ListItem></asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList><br />
                <asp:DropDownList ID="DropDownList3" CssClass="boxes" runat="server">
            <asp:ListItem>All Location...</asp:ListItem>
            <asp:ListItem></asp:ListItem>
            <asp:ListItem></asp:ListItem>
            <asp:ListItem></asp:ListItem>
            <asp:ListItem></asp:ListItem>
            <asp:ListItem></asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList><br />
        <asp:Label ID="LabelNew" runat="server" Text="New"></asp:Label>
        <asp:RadioButton ID="RadioButtonNew" runat="server" />
         <asp:Label ID="LabelUsed" runat="server" Text="Used"></asp:Label>
        <asp:RadioButton ID="RadioButtonUsed" runat="server" />
      <button type="button" class="btn btn-default">Search</button>
    </div>
</asp:Content>

