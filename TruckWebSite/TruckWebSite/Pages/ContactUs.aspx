<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="TruckWebSite.ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div>
        <h1>Contact US</h1>
        <asp:Label ID="dbErrorMessage" ForeColor="Red" runat="server" />
        <p>
            Name:<br />
            <asp:TextBox ID="nameTextBox" runat="server" CssClass="textbox" />
        </p>
        <p>
            Email:<br />
            <asp:TextBox ID="emailTextBox" runat="server" CssClass="textbox" />
            <asp:RegularExpressionValidator ID="valRegEx" runat="server"
                ControlToValidate="emailTextBox"
                ValidationExpression=".*@.*\..*"
                ErrorMessage="*Invalid Email address."
                Display="dynamic"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Email address."
                ControlToValidate="emailTextBox"></asp:RequiredFieldValidator>
        </p>
        <p>
            Description:<br />
            <asp:TextBox ID="descriptionTextBox" runat="server" CssClass="textbox" Columns="40" Rows="4" TextMode="MultiLine" />
            <asp:RequiredFieldValidator ID="descriptionReq" runat="server" ControlToValidate="descriptionTextBox" ErrorMessage="<br />You must enter a description!" Display="None" />
        </p>
        <p>
            <asp:Button ID="submitButton" runat="server" CssClass="button" Text="Submit Request" OnClick="submitButton_Click" />
        </p>

        <p>
            <asp:Label ID="labelError" runat="server" CssClass="alert-info" Visible="false"></asp:Label>
        </p>
    </div>

</asp:Content>
