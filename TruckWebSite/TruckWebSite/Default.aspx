<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TruckWebSite.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div id="Miniform">
        <asp:Label ID="LabelBuy" runat="server" CssClass="labels" Text="Buy Your Truck!!!!"></asp:Label><br />
        <asp:DropDownList ID="DropDownList" CssClass="boxes" runat="server" enableViewstate="false" AutoPostBack="false" >
            <asp:ListItem>Select...</asp:ListItem>
        </asp:DropDownList><br />
        <asp:DropDownList ID="DropDownList1" CssClass="boxes" runat="server" enableViewstate="false" AutoPostBack="false">
            <asp:ListItem>Year...</asp:ListItem>
        </asp:DropDownList><br />
        <asp:DropDownList ID="DropDownList2" CssClass="boxes" runat="server" enableViewstate="false" AutoPostBack="false">
            <asp:ListItem>Brand...</asp:ListItem>
        </asp:DropDownList><br />
        <asp:DropDownList ID="DropDownList3" CssClass="boxes" runat="server" enableViewstate="false" AutoPostBack="false">
            <asp:ListItem>All Location...</asp:ListItem>
        </asp:DropDownList><br />
        <asp:Label ID="LabelNew" runat="server" Text="New" ForeColor="White"></asp:Label>
        <asp:RadioButton ID="RadioButtonNew" runat="server" GroupName="MeasurementSystem" />
        <asp:Label ID="LabelUsed" runat="server" Text="Used" ForeColor="White"></asp:Label>
        <asp:RadioButton ID="RadioButtonUsed" runat="server" GroupName="MeasurementSystem" />
        <asp:Button ID="ButtonSeach" runat="server" CssClass="btn btn-default" Text="Search" OnClick="ButtonSeach_Click" />
        <asp:Label ID="LabelWarnig" runat="server" CssClass="alert-info" Visible="false" Text="Choose again..."></asp:Label>
    </div>
</asp:Content>

