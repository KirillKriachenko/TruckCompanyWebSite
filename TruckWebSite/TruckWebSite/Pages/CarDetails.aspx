<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="CarDetails.aspx.cs" Inherits="TruckWebSite.CarDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">


    <div id="Miniformdetail">
        <h1>Details:</h1>
        <h2>Lorem Ipsum Dolor</h2>
        <table>
            <tr>

                <asp:Image ID="truckimage" runat="server" ImageUrl="../Pictures/truck-Photo.png" class="img-rounded" alt="truck" Width="304" Height="236" />

            </tr>
            <tr>
                <th>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
        Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat
                </th>
            </tr>
        </table>
    </div>


</asp:Content>
