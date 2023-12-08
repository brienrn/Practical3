<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BusTicketing.aspx.cs" Inherits="Practical3.BusTicketing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 107px;
        }
        .auto-style2 {
            width: 8px;
        }
        .auto-style3 {
            width: 107px;
            height: 26px;
        }
        .auto-style4 {
            width: 8px;
            height: 26px;
        }
        .auto-style5 {
            height: 26px;
        }
        .auto-style6 {
            margin-left: 120px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>ABC BUS ONLINE BOOKING &amp; TICKETING SYSTEM</h2>
        </div>
        <div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblTime" runat="server" Text="" ></asp:Label>

        </div>
        <div>

            <%--<asp:Button ID="Button1" runat="server" Text="Postback" />--%>
            <br />
        </div>
        <div>

            <table style="width:100%;">
                <tr>
                    <td class="auto-style1">
                        <br />
                        Depature<br />
                        Date</td>
                    <td class="auto-style2">:</td>
                    <td>
                        <asp:Calendar ID="calDepartDt" runat="server" OnSelectionChanged="calDepartDt_SelectionChanged"></asp:Calendar>
                        <asp:TextBox ID="txtDepartDt" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Adult</td>
                    <td class="auto-style2">:</td>
                    <td>
                        <asp:TextBox ID="txtAdult" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Child</td>
                    <td class="auto-style4">:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtChild" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">From</td>
                    <td class="auto-style4">:</td>
                    <td class="auto-style5">
                        <asp:DropDownList ID="ddlFrom" runat="server" Width="149px">
                            <asp:ListItem Value="0">--Select Origin--</asp:ListItem>
                            <asp:ListItem Value="1">Hentian Duta</asp:ListItem>
                            <asp:ListItem Value="2">Hentian Putra</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Destination</td>
                    <td class="auto-style2">:</td>
                    <td>
                        <asp:DropDownList ID="ddlTo" runat="server" OnSelectedIndexChanged="ddlTo_SelectedIndexChanged" Height="22px" Width="149px" AutoPostBack="True">
                            <asp:ListItem Value="0">--Select Destination--</asp:ListItem>
                            <asp:ListItem Value="1">Butterworth</asp:ListItem>
                            <asp:ListItem Value="2">Seremban</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Ticket Price</td>
                    <td class="auto-style2">:</td>
                    <td>
                        <asp:TextBox ID="txtPrice" runat="server" Enabled="False"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <div>

                <asp:Label ID="lblError" runat="server"></asp:Label>

            </div>
            <div class="auto-style6">

                <asp:Button ID="btnBookTkt" runat="server" Text="Book Ticket" Width="103px" 
                    OnClientCLick="javascript:alert('You will now be directed to the booking confirmation page')" PostBackUrl="~/ConfirmBooking.aspx"/>
                    &nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnCancel" runat="server" OnClick="btnCancel_Click" Text="Cancel"
                    OnMouseOver="this.value='Click if you confirm to reset selection'"
                    OnMouseOut="this.value='Cancel'"/>

            </div>
        </div>
    </form>
</body>
</html>
