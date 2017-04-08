<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TruckWebSite.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <%--Mini-form to select type of truck--%>
    <div id="Miniform">
        <%--Title--%>
        <asp:Label ID="LabelBuy" runat="server" CssClass="labels" Text="Buy Your Truck!!!!"></asp:Label><br />
        <%--Plate--%>
        <asp:DropDownList runat="server" ID="DropDownList" CssClass="boxes" AutoPostBack="false" enableViewstate="true">
            <asp:ListItem>Select...</asp:ListItem>
        </asp:DropDownList><br />
        <%--Year--%>
        <asp:DropDownList ID="DropDownList1" CssClass="boxes" runat="server" AutoPostBack="false" enableViewstate="true">
            <asp:ListItem>Year...</asp:ListItem>
        </asp:DropDownList><br />
        <%--Brand--%>
        <asp:DropDownList ID="DropDownList2" CssClass="boxes" runat="server"  AutoPostBack="false" enableViewstate="true">
            <asp:ListItem>Brand...</asp:ListItem>
        </asp:DropDownList><br />
        <%--Location--%>
        <asp:DropDownList ID="DropDownList3" CssClass="boxes" runat="server"  AutoPostBack="false" enableViewstate="true">
            <asp:ListItem>All Location...</asp:ListItem>
        </asp:DropDownList><br /> 
        <%--choose between new or old truck--%>
        <asp:Label ID="LabelNew" runat="server" Text="New" ForeColor="White"></asp:Label>
        <asp:RadioButton ID="RadioButtonNew" runat="server" GroupName="MeasurementSystem" />
        <asp:Label ID="LabelUsed" runat="server" Text="Used" ForeColor="White"></asp:Label>
        <asp:RadioButton ID="RadioButtonUsed" runat="server" GroupName="MeasurementSystem" />
        <%--search button--%>
        <asp:Button ID="ButtonSeach" runat="server" CssClass="btn btn-default" Text="Search" OnClick="ButtonSeach_Click" />
        <asp:Label ID="LabelWarnig" runat="server" CssClass="alert-info" Visible="false" Text="Choose again..."></asp:Label>
    </div>
</asp:Content>

