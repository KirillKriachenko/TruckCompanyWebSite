<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="TruckWebSite.ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    
         <div id="Miniform">
        
        <asp:Label ID="LabelContact" runat="server" CssClass="labels" Text="Contact US"></asp:Label><br />
        <p>
            <span class="labelsform">Name: </span><br />
            <asp:TextBox ID="textboxname" runat="server" CssClass="form-control"/>
        </p>
        <p>
            <span class="labelsform">Subject: </span><br />
            <asp:TextBox ID="subjectTextBox" runat="server" CssClass="form-control" />
        </p>
        <p>
           
            <span class="labelsform">Email*: </span><br />
            <asp:TextBox ID="emailTextBox" runat="server" CssClass="form-control" />
            <asp:RegularExpressionValidator ID="valRegEx" runat="server"
                ControlToValidate="emailTextBox"
                ValidationExpression=".*@.*\..*"
                ErrorMessage="*Invalid Email address."
                Display="dynamic"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Email address."
                ControlToValidate="emailTextBox"></asp:RequiredFieldValidator>
        </p>
        <p>

            <span class="labelsform"> Description*:</span><br />
            <asp:TextBox ID="descriptionTextBox" runat="server" CssClass="textbox" Columns="40" Rows="4" TextMode="MultiLine" />
            <asp:RequiredFieldValidator ID="descriptionReq" runat="server" ControlToValidate="descriptionTextBox" ErrorMessage="<br />You must enter a description!" Display="None" />
        </p>
        <p>
            <asp:Button ID="submitButton" runat="server" CssClass="btn-default" Text="Submit Request" OnClick="submitButton_Click" />
        </p>

        <p>
            <asp:Label ID="labelError" runat="server" CssClass="btn btn-default" Visible="false"></asp:Label>
        </p>
    </div>

</asp:Content>
