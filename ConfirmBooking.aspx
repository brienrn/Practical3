<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConfirmBooking.aspx.cs" Inherits="Practical3.ConfirmBooking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>ABC BUS BOOKING CONFIRMATION</h2>
        </div>
        <div>
            You have confirmed your booking with the following details:
            <br />
            <br />
        </div>
        <div>
            <asp:Label ID="lblDetails" runat="server"></asp:Label>
            <br />
            <br />
        </div>
        <div>
            Please make payment at our counter.
        </div>
    </form>
</body>
</html>
