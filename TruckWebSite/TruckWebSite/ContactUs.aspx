<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="TruckWebSite.ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div>
    <h1>Contact Us</h1>
    <asp:Label ID="dbErrorMessage" ForeColor="Red" runat="server" />
    <p>
        Name:<br />
        <asp:TextBox ID="nameTextBox" runat="server" CssClass="textbox" />

    </p>
    <p>
        Email:<br />
        <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox" />

    </p>
    <p>
        Subject:<br />
        <asp:DropDownList ID="categoryList" runat="server"
            CssClass="dropdownmenu" />
    </p>
    <p>
        Problem Subject:<br />
        <asp:DropDownList ID="subjectList" runat="server"
            CssClass="dropdownmenu" />
    </p>
    <p>
        Description:<br />
        <asp:TextBox ID="descriptionTextBox" runat="server"
            CssClass="textbox" Columns="40" Rows="4"
            TextMode="MultiLine" />
        <asp:RequiredFieldValidator ID="descriptionReq" runat="server"
            ControlToValidate="descriptionTextBox"
            ErrorMessage="<br />You must enter a description!"
            Display="None" />

    </p>
    <p>
        <asp:Button ID="submitButton" runat="server"
            CssClass="button" Text="Submit Request"/>
    </p>
        </div>

</asp:Content>
